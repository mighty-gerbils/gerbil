(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712124235)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx126555%_)
        (let* ((_%e126556126563%_ _%stx126555%_)
               (_%E126558126567%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126556126563%_)))
               (_%E126557126581%_
                (lambda ()
                  (if (gx#stx-pair? _%e126556126563%_)
                      (let ((_%e126559126571%_
                             (gx#syntax-e _%e126556126563%_)))
                        (let ((_%hd126560126574%_ (##car _%e126559126571%_))
                              (_%tl126561126576%_ (##cdr _%e126559126571%_)))
                          (let ((_%form126579%_ _%hd126560126574%_))
                            (if '#t
                                (let* ((__self126584
                                        (gx#syntax-local-e__0 _%form126579%_))
                                       (__method126585
                                        (__method-ref
                                         __self126584
                                         'compile-top-syntax)))
                                  (if __method126585
                                      (__method126585
                                       __self126584
                                       _%stx126555%_)
                                      (error '"Missing method"
                                             __self126584
                                             'compile-top-syntax)))
                                (_%E126558126567%_)))))
                      (_%E126558126567%_)))))
          (_%E126557126581%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126503%_ _%stx126504%_)
        (let ()
          (let ((_%self126507%_ _%self126503%_))
            (let ()
              (let* ((_%self126516126524%_ _%self126507%_)
                     (_%E126518126528%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self126516126524%_
                               '((core-expander _ _ K)))
                        '#!void))
                     (_%K126519126541%_
                      (lambda (_%K126531%_)
                        (let ((_%$e126533%_ (gx#stx-source _%stx126504%_)))
                          (if _%$e126533%_
                              ((lambda (_%g126535126537%_)
                                 (gx#stx-wrap-source
                                  (_%K126531%_ _%stx126504%_)
                                  _%g126535126537%_))
                               _%$e126533%_)
                              (let () (_%K126531%_ _%stx126504%_)))))))
                (if '#t
                    (let* ((_%e126520126544%_
                            (##unchecked-structure-ref
                             _%self126516126524%_
                             '1
                             '#f
                             '#f))
                           (_%e126521126547%_
                            (##unchecked-structure-ref
                             _%self126516126524%_
                             '2
                             '#f
                             '#f))
                           (_%e126522126550%_
                            (##unchecked-structure-ref
                             _%self126516126524%_
                             '3
                             '#f
                             '#f))
                           (_%K126553%_ _%e126522126550%_))
                      (_%K126519126541%_ _%K126553%_))
                    (_%E126518126528%_))))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126377%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126377%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126347%_)
        (let* ((_%e126348126355%_ _%stx126347%_)
               (_%E126350126359%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126348126355%_)))
               (_%E126349126373%_
                (lambda ()
                  (if (gx#stx-pair? _%e126348126355%_)
                      (let ((_%e126351126363%_
                             (gx#syntax-e _%e126348126355%_)))
                        (let ((_%hd126352126366%_ (##car _%e126351126363%_))
                              (_%tl126353126368%_ (##cdr _%e126351126363%_)))
                          (let ((_%body126371%_ _%tl126353126368%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126371%_))
                                (_%E126350126359%_)))))
                      (_%E126350126359%_)))))
          (_%E126349126373%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126316%_)
        (let* ((_%e126317126324%_ _%stx126316%_)
               (_%E126319126328%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126317126324%_)))
               (_%E126318126343%_
                (lambda ()
                  (if (gx#stx-pair? _%e126317126324%_)
                      (let ((_%e126320126332%_
                             (gx#syntax-e _%e126317126324%_)))
                        (let ((_%hd126321126335%_ (##car _%e126320126332%_))
                              (_%tl126322126337%_ (##cdr _%e126320126332%_)))
                          (let ((_%body126340%_ _%tl126322126337%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126340%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126319126328%_)))))
                      (_%E126319126328%_)))))
          (_%E126318126343%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126286%_)
        (let* ((_%e126287126294%_ _%stx126286%_)
               (_%E126289126298%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126287126294%_)))
               (_%E126288126312%_
                (lambda ()
                  (if (gx#stx-pair? _%e126287126294%_)
                      (let ((_%e126290126302%_
                             (gx#syntax-e _%e126287126294%_)))
                        (let ((_%hd126291126305%_ (##car _%e126290126302%_))
                              (_%tl126292126307%_ (##cdr _%e126290126302%_)))
                          (let ((_%body126310%_ _%tl126292126307%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126310%_)
                                (_%E126289126298%_)))))
                      (_%E126289126298%_)))))
          (_%E126288126312%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126232%_)
        (let* ((_%e126233126246%_ _%stx126232%_)
               (_%E126235126250%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126233126246%_)))
               (_%E126234126282%_
                (lambda ()
                  (if (gx#stx-pair? _%e126233126246%_)
                      (let ((_%e126236126254%_
                             (gx#syntax-e _%e126233126246%_)))
                        (let ((_%hd126237126257%_ (##car _%e126236126254%_))
                              (_%tl126238126259%_ (##cdr _%e126236126254%_)))
                          (if (gx#stx-pair? _%tl126238126259%_)
                              (let ((_%e126239126262%_
                                     (gx#syntax-e _%tl126238126259%_)))
                                (let ((_%hd126240126265%_
                                       (##car _%e126239126262%_))
                                      (_%tl126241126267%_
                                       (##cdr _%e126239126262%_)))
                                  (let ((_%ann126270%_ _%hd126240126265%_))
                                    (if (gx#stx-pair? _%tl126241126267%_)
                                        (let ((_%e126242126272%_
                                               (gx#syntax-e
                                                _%tl126241126267%_)))
                                          (let ((_%hd126243126275%_
                                                 (##car _%e126242126272%_))
                                                (_%tl126244126277%_
                                                 (##cdr _%e126242126272%_)))
                                            (let ((_%expr126280%_
                                                   _%hd126243126275%_))
                                              (if (gx#stx-null?
                                                   _%tl126244126277%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126280%_)
                                                      (_%E126235126250%_))
                                                  (_%E126235126250%_)))))
                                        (_%E126235126250%_)))))
                              (_%E126235126250%_))))
                      (_%E126235126250%_)))))
          (_%E126234126282%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126202%_)
        (let* ((_%e126203126210%_ _%stx126202%_)
               (_%E126205126214%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126203126210%_)))
               (_%E126204126228%_
                (lambda ()
                  (if (gx#stx-pair? _%e126203126210%_)
                      (let ((_%e126206126218%_
                             (gx#syntax-e _%e126203126210%_)))
                        (let ((_%hd126207126221%_ (##car _%e126206126218%_))
                              (_%tl126208126223%_ (##cdr _%e126206126218%_)))
                          (let ((_%body126226%_ _%tl126208126223%_))
                            (if '#t
                                (cons '%#import _%body126226%_)
                                (_%E126205126214%_)))))
                      (_%E126205126214%_)))))
          (_%E126204126228%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126159%_)
        (let* ((_%e126160126170%_ _%stx126159%_)
               (_%E126162126174%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126160126170%_)))
               (_%E126161126198%_
                (lambda ()
                  (if (gx#stx-pair? _%e126160126170%_)
                      (let ((_%e126163126178%_
                             (gx#syntax-e _%e126160126170%_)))
                        (let ((_%hd126164126181%_ (##car _%e126163126178%_))
                              (_%tl126165126183%_ (##cdr _%e126163126178%_)))
                          (if (gx#stx-pair? _%tl126165126183%_)
                              (let ((_%e126166126186%_
                                     (gx#syntax-e _%tl126165126183%_)))
                                (let ((_%hd126167126189%_
                                       (##car _%e126166126186%_))
                                      (_%tl126168126191%_
                                       (##cdr _%e126166126186%_)))
                                  (let* ((_%hd126194%_ _%hd126167126189%_)
                                         (_%body126196%_ _%tl126168126191%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126194%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126196%_)))
                                        (_%E126162126174%_)))))
                              (_%E126162126174%_))))
                      (_%E126162126174%_)))))
          (_%E126161126198%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126129%_)
        (let* ((_%e126130126137%_ _%stx126129%_)
               (_%E126132126141%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126130126137%_)))
               (_%E126131126155%_
                (lambda ()
                  (if (gx#stx-pair? _%e126130126137%_)
                      (let ((_%e126133126145%_
                             (gx#syntax-e _%e126130126137%_)))
                        (let ((_%hd126134126148%_ (##car _%e126133126145%_))
                              (_%tl126135126150%_ (##cdr _%e126133126145%_)))
                          (let ((_%body126153%_ _%tl126135126150%_))
                            (if '#t
                                (cons '%#export _%body126153%_)
                                (_%E126132126141%_)))))
                      (_%E126132126141%_)))))
          (_%E126131126155%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126099%_)
        (let* ((_%e126100126107%_ _%stx126099%_)
               (_%E126102126111%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126100126107%_)))
               (_%E126101126125%_
                (lambda ()
                  (if (gx#stx-pair? _%e126100126107%_)
                      (let ((_%e126103126115%_
                             (gx#syntax-e _%e126100126107%_)))
                        (let ((_%hd126104126118%_ (##car _%e126103126115%_))
                              (_%tl126105126120%_ (##cdr _%e126103126115%_)))
                          (let ((_%body126123%_ _%tl126105126120%_))
                            (if '#t
                                (cons '%#provide _%body126123%_)
                                (_%E126102126111%_)))))
                      (_%E126102126111%_)))))
          (_%E126101126125%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126069%_)
        (let* ((_%e126070126077%_ _%stx126069%_)
               (_%E126072126081%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126070126077%_)))
               (_%E126071126095%_
                (lambda ()
                  (if (gx#stx-pair? _%e126070126077%_)
                      (let ((_%e126073126085%_
                             (gx#syntax-e _%e126070126077%_)))
                        (let ((_%hd126074126088%_ (##car _%e126073126085%_))
                              (_%tl126075126090%_ (##cdr _%e126073126085%_)))
                          (let ((_%body126093%_ _%tl126075126090%_))
                            (if '#t
                                (cons '%#extern _%body126093%_)
                                (_%E126072126081%_)))))
                      (_%E126072126081%_)))))
          (_%E126071126095%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126015%_)
        (let* ((_%e126016126029%_ _%stx126015%_)
               (_%E126018126033%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126016126029%_)))
               (_%E126017126065%_
                (lambda ()
                  (if (gx#stx-pair? _%e126016126029%_)
                      (let ((_%e126019126037%_
                             (gx#syntax-e _%e126016126029%_)))
                        (let ((_%hd126020126040%_ (##car _%e126019126037%_))
                              (_%tl126021126042%_ (##cdr _%e126019126037%_)))
                          (if (gx#stx-pair? _%tl126021126042%_)
                              (let ((_%e126022126045%_
                                     (gx#syntax-e _%tl126021126042%_)))
                                (let ((_%hd126023126048%_
                                       (##car _%e126022126045%_))
                                      (_%tl126024126050%_
                                       (##cdr _%e126022126045%_)))
                                  (let ((_%hd126053%_ _%hd126023126048%_))
                                    (if (gx#stx-pair? _%tl126024126050%_)
                                        (let ((_%e126025126055%_
                                               (gx#syntax-e
                                                _%tl126024126050%_)))
                                          (let ((_%hd126026126058%_
                                                 (##car _%e126025126055%_))
                                                (_%tl126027126060%_
                                                 (##cdr _%e126025126055%_)))
                                            (let ((_%expr126063%_
                                                   _%hd126026126058%_))
                                              (if (gx#stx-null?
                                                   _%tl126027126060%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126053%_)
                          (cons (gx#core-compile-top-syntax _%expr126063%_)
                                '())))
              (_%E126018126033%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126018126033%_)))))
                                        (_%E126018126033%_)))))
                              (_%E126018126033%_))))
                      (_%E126018126033%_)))))
          (_%E126017126065%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx125960%_)
        (let* ((_%e125961125974%_ _%stx125960%_)
               (_%E125963125978%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125961125974%_)))
               (_%E125962126011%_
                (lambda ()
                  (if (gx#stx-pair? _%e125961125974%_)
                      (let ((_%e125964125982%_
                             (gx#syntax-e _%e125961125974%_)))
                        (let ((_%hd125965125985%_ (##car _%e125964125982%_))
                              (_%tl125966125987%_ (##cdr _%e125964125982%_)))
                          (if (gx#stx-pair? _%tl125966125987%_)
                              (let ((_%e125967125990%_
                                     (gx#syntax-e _%tl125966125987%_)))
                                (let ((_%hd125968125993%_
                                       (##car _%e125967125990%_))
                                      (_%tl125969125995%_
                                       (##cdr _%e125967125990%_)))
                                  (let ((_%hd125998%_ _%hd125968125993%_))
                                    (if (gx#stx-pair? _%tl125969125995%_)
                                        (let ((_%e125970126000%_
                                               (gx#syntax-e
                                                _%tl125969125995%_)))
                                          (let ((_%hd125971126003%_
                                                 (##car _%e125970126000%_))
                                                (_%tl125972126005%_
                                                 (##cdr _%e125970126000%_)))
                                            (let ((_%expr126008%_
                                                   _%hd125971126003%_))
                                              (if (gx#stx-null?
                                                   _%tl125972126005%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd125998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126008%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E125963125978%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125963125978%_)))))
                                        (_%E125963125978%_)))))
                              (_%E125963125978%_))))
                      (_%E125963125978%_)))))
          (_%E125962126011%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx125930%_)
        (let* ((_%e125931125938%_ _%stx125930%_)
               (_%E125933125942%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125931125938%_)))
               (_%E125932125956%_
                (lambda ()
                  (if (gx#stx-pair? _%e125931125938%_)
                      (let ((_%e125934125946%_
                             (gx#syntax-e _%e125931125938%_)))
                        (let ((_%hd125935125949%_ (##car _%e125934125946%_))
                              (_%tl125936125951%_ (##cdr _%e125934125946%_)))
                          (let ((_%body125954%_ _%tl125936125951%_))
                            (if '#t
                                (cons '%#define-alias _%body125954%_)
                                (_%E125933125942%_)))))
                      (_%E125933125942%_)))))
          (_%E125932125956%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx125900%_)
        (let* ((_%e125901125908%_ _%stx125900%_)
               (_%E125903125912%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125901125908%_)))
               (_%E125902125926%_
                (lambda ()
                  (if (gx#stx-pair? _%e125901125908%_)
                      (let ((_%e125904125916%_
                             (gx#syntax-e _%e125901125908%_)))
                        (let ((_%hd125905125919%_ (##car _%e125904125916%_))
                              (_%tl125906125921%_ (##cdr _%e125904125916%_)))
                          (let ((_%body125924%_ _%tl125906125921%_))
                            (if '#t
                                (cons '%#define-runtime _%body125924%_)
                                (_%E125903125912%_)))))
                      (_%E125903125912%_)))))
          (_%E125902125926%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx125870%_)
        (let* ((_%e125871125878%_ _%stx125870%_)
               (_%E125873125882%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125871125878%_)))
               (_%E125872125896%_
                (lambda ()
                  (if (gx#stx-pair? _%e125871125878%_)
                      (let ((_%e125874125886%_
                             (gx#syntax-e _%e125871125878%_)))
                        (let ((_%hd125875125889%_ (##car _%e125874125886%_))
                              (_%tl125876125891%_ (##cdr _%e125874125886%_)))
                          (let ((_%decls125894%_ _%tl125876125891%_))
                            (if '#t
                                (cons '%#declare _%decls125894%_)
                                (_%E125873125882%_)))))
                      (_%E125873125882%_)))))
          (_%E125872125896%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx125840%_)
        (let* ((_%e125841125848%_ _%stx125840%_)
               (_%E125843125852%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125841125848%_)))
               (_%E125842125866%_
                (lambda ()
                  (if (gx#stx-pair? _%e125841125848%_)
                      (let ((_%e125844125856%_
                             (gx#syntax-e _%e125841125848%_)))
                        (let ((_%hd125845125859%_ (##car _%e125844125856%_))
                              (_%tl125846125861%_ (##cdr _%e125844125856%_)))
                          (let ((_%clause125864%_ _%tl125846125861%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause125864%_))
                                (_%E125843125852%_)))))
                      (_%E125843125852%_)))))
          (_%E125842125866%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx125797%_)
        (let* ((_%e125798125808%_ _%stx125797%_)
               (_%E125800125812%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125798125808%_)))
               (_%E125799125836%_
                (lambda ()
                  (if (gx#stx-pair? _%e125798125808%_)
                      (let ((_%e125801125816%_
                             (gx#syntax-e _%e125798125808%_)))
                        (let ((_%hd125802125819%_ (##car _%e125801125816%_))
                              (_%tl125803125821%_ (##cdr _%e125801125816%_)))
                          (let ((_%hd125824%_ _%hd125802125819%_))
                            (if (gx#stx-pair? _%tl125803125821%_)
                                (let ((_%e125804125826%_
                                       (gx#syntax-e _%tl125803125821%_)))
                                  (let ((_%hd125805125829%_
                                         (##car _%e125804125826%_))
                                        (_%tl125806125831%_
                                         (##cdr _%e125804125826%_)))
                                    (let ((_%body125834%_ _%hd125805125829%_))
                                      (if (gx#stx-null? _%tl125806125831%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd125824%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body125834%_)
                                                          '()))
                                              (_%E125800125812%_))
                                          (_%E125800125812%_)))))
                                (_%E125800125812%_)))))
                      (_%E125800125812%_)))))
          (_%E125799125836%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx125767%_)
        (let* ((_%e125768125775%_ _%stx125767%_)
               (_%E125770125779%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125768125775%_)))
               (_%E125769125793%_
                (lambda ()
                  (if (gx#stx-pair? _%e125768125775%_)
                      (let ((_%e125771125783%_
                             (gx#syntax-e _%e125768125775%_)))
                        (let ((_%hd125772125786%_ (##car _%e125771125783%_))
                              (_%tl125773125788%_ (##cdr _%e125771125783%_)))
                          (let ((_%clauses125791%_ _%tl125773125788%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses125791%_))
                                (_%E125770125779%_)))))
                      (_%E125770125779%_)))))
          (_%E125769125793%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx125702%_ _%form125703%_)
        (let* ((_%e125704125717%_ _%stx125702%_)
               (_%E125706125721%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125704125717%_)))
               (_%E125705125753%_
                (lambda ()
                  (if (gx#stx-pair? _%e125704125717%_)
                      (let ((_%e125707125725%_
                             (gx#syntax-e _%e125704125717%_)))
                        (let ((_%hd125708125728%_ (##car _%e125707125725%_))
                              (_%tl125709125730%_ (##cdr _%e125707125725%_)))
                          (if (gx#stx-pair? _%tl125709125730%_)
                              (let ((_%e125710125733%_
                                     (gx#syntax-e _%tl125709125730%_)))
                                (let ((_%hd125711125736%_
                                       (##car _%e125710125733%_))
                                      (_%tl125712125738%_
                                       (##cdr _%e125710125733%_)))
                                  (let ((_%hd125741%_ _%hd125711125736%_))
                                    (if (gx#stx-pair? _%tl125712125738%_)
                                        (let ((_%e125713125743%_
                                               (gx#syntax-e
                                                _%tl125712125738%_)))
                                          (let ((_%hd125714125746%_
                                                 (##car _%e125713125743%_))
                                                (_%tl125715125748%_
                                                 (##cdr _%e125713125743%_)))
                                            (let ((_%body125751%_
                                                   _%hd125714125746%_))
                                              (if (gx#stx-null?
                                                   _%tl125715125748%_)
                                                  (if '#t
                                                      (cons _%form125703%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd125741%_)
                          (cons (gx#core-compile-top-syntax _%body125751%_)
                                '())))
              (_%E125706125721%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125706125721%_)))))
                                        (_%E125706125721%_)))))
                              (_%E125706125721%_))))
                      (_%E125706125721%_)))))
          (_%E125705125753%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx125760%_)
        (let ((_%form125762%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx125760%_ _%form125762%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g126587_
        (let ((_g126586_ (##length _g126587_)))
          (cond ((##fx= _g126586_ 1)
                 (apply (lambda (_%stx125760%_)
                          (gx#core-compile-top-let-values%__0 _%stx125760%_))
                        _g126587_))
                ((##fx= _g126586_ 2)
                 (apply (lambda (_%stx125764%_ _%form125765%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx125764%_
                           _%form125765%_))
                        _g126587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g126587_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx125699%_)
        (gx#core-compile-top-let-values%__% _%stx125699%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx125697%_)
        (gx#core-compile-top-let-values%__% _%stx125697%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx125656%_)
        (let* ((_%e125657125667%_ _%stx125656%_)
               (_%E125659125671%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125657125667%_)))
               (_%E125658125693%_
                (lambda ()
                  (if (gx#stx-pair? _%e125657125667%_)
                      (let ((_%e125660125675%_
                             (gx#syntax-e _%e125657125667%_)))
                        (let ((_%hd125661125678%_ (##car _%e125660125675%_))
                              (_%tl125662125680%_ (##cdr _%e125660125675%_)))
                          (if (gx#stx-pair? _%tl125662125680%_)
                              (let ((_%e125663125683%_
                                     (gx#syntax-e _%tl125662125680%_)))
                                (let ((_%hd125664125686%_
                                       (##car _%e125663125683%_))
                                      (_%tl125665125688%_
                                       (##cdr _%e125663125683%_)))
                                  (let ((_%e125691%_ _%hd125664125686%_))
                                    (if (gx#stx-null? _%tl125665125688%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e125691%_)
                                                        '()))
                                            (_%E125659125671%_))
                                        (_%E125659125671%_)))))
                              (_%E125659125671%_))))
                      (_%E125659125671%_)))))
          (_%E125658125693%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx125615%_)
        (let* ((_%e125616125626%_ _%stx125615%_)
               (_%E125618125630%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125616125626%_)))
               (_%E125617125652%_
                (lambda ()
                  (if (gx#stx-pair? _%e125616125626%_)
                      (let ((_%e125619125634%_
                             (gx#syntax-e _%e125616125626%_)))
                        (let ((_%hd125620125637%_ (##car _%e125619125634%_))
                              (_%tl125621125639%_ (##cdr _%e125619125634%_)))
                          (if (gx#stx-pair? _%tl125621125639%_)
                              (let ((_%e125622125642%_
                                     (gx#syntax-e _%tl125621125639%_)))
                                (let ((_%hd125623125645%_
                                       (##car _%e125622125642%_))
                                      (_%tl125624125647%_
                                       (##cdr _%e125622125642%_)))
                                  (let ((_%e125650%_ _%hd125623125645%_))
                                    (if (gx#stx-null? _%tl125624125647%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e125650%_)
                                                        '()))
                                            (_%E125618125630%_))
                                        (_%E125618125630%_)))))
                              (_%E125618125630%_))))
                      (_%E125618125630%_)))))
          (_%E125617125652%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx125572%_)
        (let* ((_%e125573125583%_ _%stx125572%_)
               (_%E125575125587%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125573125583%_)))
               (_%E125574125611%_
                (lambda ()
                  (if (gx#stx-pair? _%e125573125583%_)
                      (let ((_%e125576125591%_
                             (gx#syntax-e _%e125573125583%_)))
                        (let ((_%hd125577125594%_ (##car _%e125576125591%_))
                              (_%tl125578125596%_ (##cdr _%e125576125591%_)))
                          (if (gx#stx-pair? _%tl125578125596%_)
                              (let ((_%e125579125599%_
                                     (gx#syntax-e _%tl125578125596%_)))
                                (let ((_%hd125580125602%_
                                       (##car _%e125579125599%_))
                                      (_%tl125581125604%_
                                       (##cdr _%e125579125599%_)))
                                  (let* ((_%rator125607%_ _%hd125580125602%_)
                                         (_%args125609%_ _%tl125581125604%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator125607%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args125609%_)))
                                        (_%E125575125587%_)))))
                              (_%E125575125587%_))))
                      (_%E125575125587%_)))))
          (_%E125574125611%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx125505%_)
        (let* ((_%e125506125522%_ _%stx125505%_)
               (_%E125508125526%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125506125522%_)))
               (_%E125507125568%_
                (lambda ()
                  (if (gx#stx-pair? _%e125506125522%_)
                      (let ((_%e125509125530%_
                             (gx#syntax-e _%e125506125522%_)))
                        (let ((_%hd125510125533%_ (##car _%e125509125530%_))
                              (_%tl125511125535%_ (##cdr _%e125509125530%_)))
                          (if (gx#stx-pair? _%tl125511125535%_)
                              (let ((_%e125512125538%_
                                     (gx#syntax-e _%tl125511125535%_)))
                                (let ((_%hd125513125541%_
                                       (##car _%e125512125538%_))
                                      (_%tl125514125543%_
                                       (##cdr _%e125512125538%_)))
                                  (let ((_%test125546%_ _%hd125513125541%_))
                                    (if (gx#stx-pair? _%tl125514125543%_)
                                        (let ((_%e125515125548%_
                                               (gx#syntax-e
                                                _%tl125514125543%_)))
                                          (let ((_%hd125516125551%_
                                                 (##car _%e125515125548%_))
                                                (_%tl125517125553%_
                                                 (##cdr _%e125515125548%_)))
                                            (let ((_%K125556%_
                                                   _%hd125516125551%_))
                                              (if (gx#stx-pair?
                                                   _%tl125517125553%_)
                                                  (let ((_%e125518125558%_
                                                         (gx#syntax-e
                                                          _%tl125517125553%_)))
                                                    (let ((_%hd125519125561%_
                                                           (##car _%e125518125558%_))
                                                          (_%tl125520125563%_
                                                           (##cdr _%e125518125558%_)))
                                                      (let ((_%E125566%_
                                                             _%hd125519125561%_))
                                                        (if (gx#stx-null?
                                                             _%tl125520125563%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test125546%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K125556%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E125566%_)
                                                '()))))
                        (_%E125508125526%_))
                    (_%E125508125526%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125508125526%_)))))
                                        (_%E125508125526%_)))))
                              (_%E125508125526%_))))
                      (_%E125508125526%_)))))
          (_%E125507125568%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125464%_)
        (let* ((_%e125465125475%_ _%stx125464%_)
               (_%E125467125479%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125465125475%_)))
               (_%E125466125501%_
                (lambda ()
                  (if (gx#stx-pair? _%e125465125475%_)
                      (let ((_%e125468125483%_
                             (gx#syntax-e _%e125465125475%_)))
                        (let ((_%hd125469125486%_ (##car _%e125468125483%_))
                              (_%tl125470125488%_ (##cdr _%e125468125483%_)))
                          (if (gx#stx-pair? _%tl125470125488%_)
                              (let ((_%e125471125491%_
                                     (gx#syntax-e _%tl125470125488%_)))
                                (let ((_%hd125472125494%_
                                       (##car _%e125471125491%_))
                                      (_%tl125473125496%_
                                       (##cdr _%e125471125491%_)))
                                  (let ((_%id125499%_ _%hd125472125494%_))
                                    (if (gx#stx-null? _%tl125473125496%_)
                                        (if (gx#identifier? _%id125499%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id125499%_)
                                                        '()))
                                            (_%E125467125479%_))
                                        (_%E125467125479%_)))))
                              (_%E125467125479%_))))
                      (_%E125467125479%_)))))
          (_%E125466125501%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125410%_)
        (let* ((_%e125411125424%_ _%stx125410%_)
               (_%E125413125428%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125411125424%_)))
               (_%E125412125460%_
                (lambda ()
                  (if (gx#stx-pair? _%e125411125424%_)
                      (let ((_%e125414125432%_
                             (gx#syntax-e _%e125411125424%_)))
                        (let ((_%hd125415125435%_ (##car _%e125414125432%_))
                              (_%tl125416125437%_ (##cdr _%e125414125432%_)))
                          (if (gx#stx-pair? _%tl125416125437%_)
                              (let ((_%e125417125440%_
                                     (gx#syntax-e _%tl125416125437%_)))
                                (let ((_%hd125418125443%_
                                       (##car _%e125417125440%_))
                                      (_%tl125419125445%_
                                       (##cdr _%e125417125440%_)))
                                  (let ((_%id125448%_ _%hd125418125443%_))
                                    (if (gx#stx-pair? _%tl125419125445%_)
                                        (let ((_%e125420125450%_
                                               (gx#syntax-e
                                                _%tl125419125445%_)))
                                          (let ((_%hd125421125453%_
                                                 (##car _%e125420125450%_))
                                                (_%tl125422125455%_
                                                 (##cdr _%e125420125450%_)))
                                            (let ((_%expr125458%_
                                                   _%hd125421125453%_))
                                              (if (gx#stx-null?
                                                   _%tl125422125455%_)
                                                  (if (gx#identifier?
                                                       _%id125448%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125448%_)
                          (cons (gx#core-compile-top-syntax _%expr125458%_)
                                '())))
              (_%E125413125428%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125413125428%_)))))
                                        (_%E125413125428%_)))))
                              (_%E125413125428%_))))
                      (_%E125413125428%_)))))
          (_%E125412125460%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125404%_)
        (let ((_%$e125406%_ (gx#resolve-identifier__0 _%id125404%_)))
          (if _%$e125406%_
              (##unchecked-structure-ref _%$e125406%_ '1 '#f '#f)
              (let () _%id125404%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125402%_)
        (if (gx#identifier? _%hd125402%_)
            (gx#core-compile-top-runtime-ref _%hd125402%_)
            '#f)))))
