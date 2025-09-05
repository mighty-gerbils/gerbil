(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1756721296)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx138858%_)
        (let* ((_%e138859138866%_ _%stx138858%_)
               (_%E138861138870%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138859138866%_)))
               (_%E138860138884%_
                (lambda ()
                  (if (gx#stx-pair? _%e138859138866%_)
                      (let ((_%e138862138874%_
                             (gx#syntax-e _%e138859138866%_)))
                        (let ((_%hd138863138877%_ (##car _%e138862138874%_))
                              (_%tl138864138879%_ (##cdr _%e138862138874%_)))
                          (let* ((_%form138882%_ _%hd138863138877%_)
                                 (__self138887
                                  (gx#syntax-local-e__0 _%form138882%_))
                                 (__method138888
                                  (__method-ref
                                   __self138887
                                   'compile-top-syntax)))
                            (if __method138888
                                (__method138888 __self138887 _%stx138858%_)
                                (begin
                                  (error '"Missing method"
                                         __self138887
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E138861138870%_)))))
          (_%E138860138884%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self138806%_ _%stx138807%_)
        (let* ((_%self138810%_ _%self138806%_)
               (_%self138819138827%_ _%self138810%_)
               (_%E138821138831%_
                (lambda ()
                  (error '"No clause matching"
                         _%self138819138827%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K138822138844%_
                (lambda (_%K138834%_)
                  (let ((_%$e138836%_ (gx#stx-source _%stx138807%_)))
                    (if _%$e138836%_
                        ((lambda (_%g138838138840%_)
                           (gx#stx-wrap-source
                            (_%K138834%_ _%stx138807%_)
                            _%g138838138840%_))
                         _%$e138836%_)
                        (_%K138834%_ _%stx138807%_)))))
               (_%e138823138847%_
                (##unchecked-structure-ref _%self138819138827%_ '1 '#f '#f))
               (_%e138824138850%_
                (##unchecked-structure-ref _%self138819138827%_ '2 '#f '#f))
               (_%e138825138853%_
                (##unchecked-structure-ref _%self138819138827%_ '3 '#f '#f))
               (_%K138856%_ _%e138825138853%_))
          (_%K138822138844%_ _%K138856%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx138680%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx138680%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx138650%_)
        (let* ((_%e138651138658%_ _%stx138650%_)
               (_%E138653138662%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138651138658%_)))
               (_%E138652138676%_
                (lambda ()
                  (if (gx#stx-pair? _%e138651138658%_)
                      (let ((_%e138654138666%_
                             (gx#syntax-e _%e138651138658%_)))
                        (let ((_%hd138655138669%_ (##car _%e138654138666%_))
                              (_%tl138656138671%_ (##cdr _%e138654138666%_)))
                          (let ((_%body138674%_ _%tl138656138671%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body138674%_)))))
                      (_%E138653138662%_)))))
          (_%E138652138676%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx138619%_)
        (let* ((_%e138620138627%_ _%stx138619%_)
               (_%E138622138631%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138620138627%_)))
               (_%E138621138646%_
                (lambda ()
                  (if (gx#stx-pair? _%e138620138627%_)
                      (let ((_%e138623138635%_
                             (gx#syntax-e _%e138620138627%_)))
                        (let ((_%hd138624138638%_ (##car _%e138623138635%_))
                              (_%tl138625138640%_ (##cdr _%e138623138635%_)))
                          (let ((_%body138643%_ _%tl138625138640%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body138643%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E138622138631%_)))))
          (_%E138621138646%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx138589%_)
        (let* ((_%e138590138597%_ _%stx138589%_)
               (_%E138592138601%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138590138597%_)))
               (_%E138591138615%_
                (lambda ()
                  (if (gx#stx-pair? _%e138590138597%_)
                      (let ((_%e138593138605%_
                             (gx#syntax-e _%e138590138597%_)))
                        (let ((_%hd138594138608%_ (##car _%e138593138605%_))
                              (_%tl138595138610%_ (##cdr _%e138593138605%_)))
                          (let ((_%body138613%_ _%tl138595138610%_))
                            (cons '%#begin-foreign _%body138613%_))))
                      (_%E138592138601%_)))))
          (_%E138591138615%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx138535%_)
        (let* ((_%e138536138549%_ _%stx138535%_)
               (_%E138538138553%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138536138549%_)))
               (_%E138537138585%_
                (lambda ()
                  (if (gx#stx-pair? _%e138536138549%_)
                      (let ((_%e138539138557%_
                             (gx#syntax-e _%e138536138549%_)))
                        (let ((_%hd138540138560%_ (##car _%e138539138557%_))
                              (_%tl138541138562%_ (##cdr _%e138539138557%_)))
                          (if (gx#stx-pair? _%tl138541138562%_)
                              (let ((_%e138542138565%_
                                     (gx#syntax-e _%tl138541138562%_)))
                                (let ((_%hd138543138568%_
                                       (##car _%e138542138565%_))
                                      (_%tl138544138570%_
                                       (##cdr _%e138542138565%_)))
                                  (let ((_%ann138573%_ _%hd138543138568%_))
                                    (if (gx#stx-pair? _%tl138544138570%_)
                                        (let ((_%e138545138575%_
                                               (gx#syntax-e
                                                _%tl138544138570%_)))
                                          (let ((_%hd138546138578%_
                                                 (##car _%e138545138575%_))
                                                (_%tl138547138580%_
                                                 (##cdr _%e138545138575%_)))
                                            (let ((_%expr138583%_
                                                   _%hd138546138578%_))
                                              (if (gx#stx-null?
                                                   _%tl138547138580%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr138583%_)
                                                  (_%E138538138553%_)))))
                                        (_%E138538138553%_)))))
                              (_%E138538138553%_))))
                      (_%E138538138553%_)))))
          (_%E138537138585%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx138505%_)
        (let* ((_%e138506138513%_ _%stx138505%_)
               (_%E138508138517%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138506138513%_)))
               (_%E138507138531%_
                (lambda ()
                  (if (gx#stx-pair? _%e138506138513%_)
                      (let ((_%e138509138521%_
                             (gx#syntax-e _%e138506138513%_)))
                        (let ((_%hd138510138524%_ (##car _%e138509138521%_))
                              (_%tl138511138526%_ (##cdr _%e138509138521%_)))
                          (let ((_%body138529%_ _%tl138511138526%_))
                            (cons '%#import _%body138529%_))))
                      (_%E138508138517%_)))))
          (_%E138507138531%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx138462%_)
        (let* ((_%e138463138473%_ _%stx138462%_)
               (_%E138465138477%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138463138473%_)))
               (_%E138464138501%_
                (lambda ()
                  (if (gx#stx-pair? _%e138463138473%_)
                      (let ((_%e138466138481%_
                             (gx#syntax-e _%e138463138473%_)))
                        (let ((_%hd138467138484%_ (##car _%e138466138481%_))
                              (_%tl138468138486%_ (##cdr _%e138466138481%_)))
                          (if (gx#stx-pair? _%tl138468138486%_)
                              (let ((_%e138469138489%_
                                     (gx#syntax-e _%tl138468138486%_)))
                                (let ((_%hd138470138492%_
                                       (##car _%e138469138489%_))
                                      (_%tl138471138494%_
                                       (##cdr _%e138469138489%_)))
                                  (let* ((_%hd138497%_ _%hd138470138492%_)
                                         (_%body138499%_ _%tl138471138494%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd138497%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body138499%_))))))
                              (_%E138465138477%_))))
                      (_%E138465138477%_)))))
          (_%E138464138501%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx138432%_)
        (let* ((_%e138433138440%_ _%stx138432%_)
               (_%E138435138444%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138433138440%_)))
               (_%E138434138458%_
                (lambda ()
                  (if (gx#stx-pair? _%e138433138440%_)
                      (let ((_%e138436138448%_
                             (gx#syntax-e _%e138433138440%_)))
                        (let ((_%hd138437138451%_ (##car _%e138436138448%_))
                              (_%tl138438138453%_ (##cdr _%e138436138448%_)))
                          (let ((_%body138456%_ _%tl138438138453%_))
                            (cons '%#export _%body138456%_))))
                      (_%E138435138444%_)))))
          (_%E138434138458%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx138402%_)
        (let* ((_%e138403138410%_ _%stx138402%_)
               (_%E138405138414%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138403138410%_)))
               (_%E138404138428%_
                (lambda ()
                  (if (gx#stx-pair? _%e138403138410%_)
                      (let ((_%e138406138418%_
                             (gx#syntax-e _%e138403138410%_)))
                        (let ((_%hd138407138421%_ (##car _%e138406138418%_))
                              (_%tl138408138423%_ (##cdr _%e138406138418%_)))
                          (let ((_%body138426%_ _%tl138408138423%_))
                            (cons '%#provide _%body138426%_))))
                      (_%E138405138414%_)))))
          (_%E138404138428%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx138372%_)
        (let* ((_%e138373138380%_ _%stx138372%_)
               (_%E138375138384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138373138380%_)))
               (_%E138374138398%_
                (lambda ()
                  (if (gx#stx-pair? _%e138373138380%_)
                      (let ((_%e138376138388%_
                             (gx#syntax-e _%e138373138380%_)))
                        (let ((_%hd138377138391%_ (##car _%e138376138388%_))
                              (_%tl138378138393%_ (##cdr _%e138376138388%_)))
                          (let ((_%body138396%_ _%tl138378138393%_))
                            (cons '%#extern _%body138396%_))))
                      (_%E138375138384%_)))))
          (_%E138374138398%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx138318%_)
        (let* ((_%e138319138332%_ _%stx138318%_)
               (_%E138321138336%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138319138332%_)))
               (_%E138320138368%_
                (lambda ()
                  (if (gx#stx-pair? _%e138319138332%_)
                      (let ((_%e138322138340%_
                             (gx#syntax-e _%e138319138332%_)))
                        (let ((_%hd138323138343%_ (##car _%e138322138340%_))
                              (_%tl138324138345%_ (##cdr _%e138322138340%_)))
                          (if (gx#stx-pair? _%tl138324138345%_)
                              (let ((_%e138325138348%_
                                     (gx#syntax-e _%tl138324138345%_)))
                                (let ((_%hd138326138351%_
                                       (##car _%e138325138348%_))
                                      (_%tl138327138353%_
                                       (##cdr _%e138325138348%_)))
                                  (let ((_%hd138356%_ _%hd138326138351%_))
                                    (if (gx#stx-pair? _%tl138327138353%_)
                                        (let ((_%e138328138358%_
                                               (gx#syntax-e
                                                _%tl138327138353%_)))
                                          (let ((_%hd138329138361%_
                                                 (##car _%e138328138358%_))
                                                (_%tl138330138363%_
                                                 (##cdr _%e138328138358%_)))
                                            (let ((_%expr138366%_
                                                   _%hd138329138361%_))
                                              (if (gx#stx-null?
                                                   _%tl138330138363%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd138356%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr138366%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E138321138336%_)))))
                                        (_%E138321138336%_)))))
                              (_%E138321138336%_))))
                      (_%E138321138336%_)))))
          (_%E138320138368%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx138263%_)
        (let* ((_%e138264138277%_ _%stx138263%_)
               (_%E138266138281%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138264138277%_)))
               (_%E138265138314%_
                (lambda ()
                  (if (gx#stx-pair? _%e138264138277%_)
                      (let ((_%e138267138285%_
                             (gx#syntax-e _%e138264138277%_)))
                        (let ((_%hd138268138288%_ (##car _%e138267138285%_))
                              (_%tl138269138290%_ (##cdr _%e138267138285%_)))
                          (if (gx#stx-pair? _%tl138269138290%_)
                              (let ((_%e138270138293%_
                                     (gx#syntax-e _%tl138269138290%_)))
                                (let ((_%hd138271138296%_
                                       (##car _%e138270138293%_))
                                      (_%tl138272138298%_
                                       (##cdr _%e138270138293%_)))
                                  (let ((_%hd138301%_ _%hd138271138296%_))
                                    (if (gx#stx-pair? _%tl138272138298%_)
                                        (let ((_%e138273138303%_
                                               (gx#syntax-e
                                                _%tl138272138298%_)))
                                          (let ((_%hd138274138306%_
                                                 (##car _%e138273138303%_))
                                                (_%tl138275138308%_
                                                 (##cdr _%e138273138303%_)))
                                            (let ((_%expr138311%_
                                                   _%hd138274138306%_))
                                              (if (gx#stx-null?
                                                   _%tl138275138308%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd138301%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr138311%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E138266138281%_)))))
                                        (_%E138266138281%_)))))
                              (_%E138266138281%_))))
                      (_%E138266138281%_)))))
          (_%E138265138314%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx138233%_)
        (let* ((_%e138234138241%_ _%stx138233%_)
               (_%E138236138245%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138234138241%_)))
               (_%E138235138259%_
                (lambda ()
                  (if (gx#stx-pair? _%e138234138241%_)
                      (let ((_%e138237138249%_
                             (gx#syntax-e _%e138234138241%_)))
                        (let ((_%hd138238138252%_ (##car _%e138237138249%_))
                              (_%tl138239138254%_ (##cdr _%e138237138249%_)))
                          (let ((_%body138257%_ _%tl138239138254%_))
                            (cons '%#define-alias _%body138257%_))))
                      (_%E138236138245%_)))))
          (_%E138235138259%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx138203%_)
        (let* ((_%e138204138211%_ _%stx138203%_)
               (_%E138206138215%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138204138211%_)))
               (_%E138205138229%_
                (lambda ()
                  (if (gx#stx-pair? _%e138204138211%_)
                      (let ((_%e138207138219%_
                             (gx#syntax-e _%e138204138211%_)))
                        (let ((_%hd138208138222%_ (##car _%e138207138219%_))
                              (_%tl138209138224%_ (##cdr _%e138207138219%_)))
                          (let ((_%body138227%_ _%tl138209138224%_))
                            (cons '%#define-runtime _%body138227%_))))
                      (_%E138206138215%_)))))
          (_%E138205138229%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx138173%_)
        (let* ((_%e138174138181%_ _%stx138173%_)
               (_%E138176138185%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138174138181%_)))
               (_%E138175138199%_
                (lambda ()
                  (if (gx#stx-pair? _%e138174138181%_)
                      (let ((_%e138177138189%_
                             (gx#syntax-e _%e138174138181%_)))
                        (let ((_%hd138178138192%_ (##car _%e138177138189%_))
                              (_%tl138179138194%_ (##cdr _%e138177138189%_)))
                          (let ((_%decls138197%_ _%tl138179138194%_))
                            (cons '%#declare _%decls138197%_))))
                      (_%E138176138185%_)))))
          (_%E138175138199%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx138143%_)
        (let* ((_%e138144138151%_ _%stx138143%_)
               (_%E138146138155%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138144138151%_)))
               (_%E138145138169%_
                (lambda ()
                  (if (gx#stx-pair? _%e138144138151%_)
                      (let ((_%e138147138159%_
                             (gx#syntax-e _%e138144138151%_)))
                        (let ((_%hd138148138162%_ (##car _%e138147138159%_))
                              (_%tl138149138164%_ (##cdr _%e138147138159%_)))
                          (let ((_%clause138167%_ _%tl138149138164%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause138167%_)))))
                      (_%E138146138155%_)))))
          (_%E138145138169%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx138100%_)
        (let* ((_%e138101138111%_ _%stx138100%_)
               (_%E138103138115%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138101138111%_)))
               (_%E138102138139%_
                (lambda ()
                  (if (gx#stx-pair? _%e138101138111%_)
                      (let ((_%e138104138119%_
                             (gx#syntax-e _%e138101138111%_)))
                        (let ((_%hd138105138122%_ (##car _%e138104138119%_))
                              (_%tl138106138124%_ (##cdr _%e138104138119%_)))
                          (let ((_%hd138127%_ _%hd138105138122%_))
                            (if (gx#stx-pair? _%tl138106138124%_)
                                (let ((_%e138107138129%_
                                       (gx#syntax-e _%tl138106138124%_)))
                                  (let ((_%hd138108138132%_
                                         (##car _%e138107138129%_))
                                        (_%tl138109138134%_
                                         (##cdr _%e138107138129%_)))
                                    (let ((_%body138137%_ _%hd138108138132%_))
                                      (if (gx#stx-null? _%tl138109138134%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd138127%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body138137%_)
                                                      '()))
                                          (_%E138103138115%_)))))
                                (_%E138103138115%_)))))
                      (_%E138103138115%_)))))
          (_%E138102138139%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx138070%_)
        (let* ((_%e138071138078%_ _%stx138070%_)
               (_%E138073138082%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138071138078%_)))
               (_%E138072138096%_
                (lambda ()
                  (if (gx#stx-pair? _%e138071138078%_)
                      (let ((_%e138074138086%_
                             (gx#syntax-e _%e138071138078%_)))
                        (let ((_%hd138075138089%_ (##car _%e138074138086%_))
                              (_%tl138076138091%_ (##cdr _%e138074138086%_)))
                          (let ((_%clauses138094%_ _%tl138076138091%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses138094%_)))))
                      (_%E138073138082%_)))))
          (_%E138072138096%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx138005%_ _%form138006%_)
        (let* ((_%e138007138020%_ _%stx138005%_)
               (_%E138009138024%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138007138020%_)))
               (_%E138008138056%_
                (lambda ()
                  (if (gx#stx-pair? _%e138007138020%_)
                      (let ((_%e138010138028%_
                             (gx#syntax-e _%e138007138020%_)))
                        (let ((_%hd138011138031%_ (##car _%e138010138028%_))
                              (_%tl138012138033%_ (##cdr _%e138010138028%_)))
                          (if (gx#stx-pair? _%tl138012138033%_)
                              (let ((_%e138013138036%_
                                     (gx#syntax-e _%tl138012138033%_)))
                                (let ((_%hd138014138039%_
                                       (##car _%e138013138036%_))
                                      (_%tl138015138041%_
                                       (##cdr _%e138013138036%_)))
                                  (let ((_%hd138044%_ _%hd138014138039%_))
                                    (if (gx#stx-pair? _%tl138015138041%_)
                                        (let ((_%e138016138046%_
                                               (gx#syntax-e
                                                _%tl138015138041%_)))
                                          (let ((_%hd138017138049%_
                                                 (##car _%e138016138046%_))
                                                (_%tl138018138051%_
                                                 (##cdr _%e138016138046%_)))
                                            (let ((_%body138054%_
                                                   _%hd138017138049%_))
                                              (if (gx#stx-null?
                                                   _%tl138018138051%_)
                                                  (cons _%form138006%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd138044%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body138054%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E138009138024%_)))))
                                        (_%E138009138024%_)))))
                              (_%E138009138024%_))))
                      (_%E138009138024%_)))))
          (_%E138008138056%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx138063%_)
        (let ((_%form138065%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx138063%_ _%form138065%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g138889_
        (let ((_g138890_ (##length _g138889_)))
          (cond ((##fx= _g138890_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g138889_))
                ((##fx= _g138890_ 2)
                 (apply gx#core-compile-top-let-values%__% _g138889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g138889_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx138002%_)
        (gx#core-compile-top-let-values%__% _%stx138002%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx138000%_)
        (gx#core-compile-top-let-values%__% _%stx138000%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx137959%_)
        (let* ((_%e137960137970%_ _%stx137959%_)
               (_%E137962137974%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137960137970%_)))
               (_%E137961137996%_
                (lambda ()
                  (if (gx#stx-pair? _%e137960137970%_)
                      (let ((_%e137963137978%_
                             (gx#syntax-e _%e137960137970%_)))
                        (let ((_%hd137964137981%_ (##car _%e137963137978%_))
                              (_%tl137965137983%_ (##cdr _%e137963137978%_)))
                          (if (gx#stx-pair? _%tl137965137983%_)
                              (let ((_%e137966137986%_
                                     (gx#syntax-e _%tl137965137983%_)))
                                (let ((_%hd137967137989%_
                                       (##car _%e137966137986%_))
                                      (_%tl137968137991%_
                                       (##cdr _%e137966137986%_)))
                                  (let ((_%e137994%_ _%hd137967137989%_))
                                    (if (gx#stx-null? _%tl137968137991%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e137994%_)
                                                    '()))
                                        (_%E137962137974%_)))))
                              (_%E137962137974%_))))
                      (_%E137962137974%_)))))
          (_%E137961137996%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx137918%_)
        (let* ((_%e137919137929%_ _%stx137918%_)
               (_%E137921137933%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137919137929%_)))
               (_%E137920137955%_
                (lambda ()
                  (if (gx#stx-pair? _%e137919137929%_)
                      (let ((_%e137922137937%_
                             (gx#syntax-e _%e137919137929%_)))
                        (let ((_%hd137923137940%_ (##car _%e137922137937%_))
                              (_%tl137924137942%_ (##cdr _%e137922137937%_)))
                          (if (gx#stx-pair? _%tl137924137942%_)
                              (let ((_%e137925137945%_
                                     (gx#syntax-e _%tl137924137942%_)))
                                (let ((_%hd137926137948%_
                                       (##car _%e137925137945%_))
                                      (_%tl137927137950%_
                                       (##cdr _%e137925137945%_)))
                                  (let ((_%e137953%_ _%hd137926137948%_))
                                    (if (gx#stx-null? _%tl137927137950%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e137953%_)
                                                    '()))
                                        (_%E137921137933%_)))))
                              (_%E137921137933%_))))
                      (_%E137921137933%_)))))
          (_%E137920137955%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx137875%_)
        (let* ((_%e137876137886%_ _%stx137875%_)
               (_%E137878137890%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137876137886%_)))
               (_%E137877137914%_
                (lambda ()
                  (if (gx#stx-pair? _%e137876137886%_)
                      (let ((_%e137879137894%_
                             (gx#syntax-e _%e137876137886%_)))
                        (let ((_%hd137880137897%_ (##car _%e137879137894%_))
                              (_%tl137881137899%_ (##cdr _%e137879137894%_)))
                          (if (gx#stx-pair? _%tl137881137899%_)
                              (let ((_%e137882137902%_
                                     (gx#syntax-e _%tl137881137899%_)))
                                (let ((_%hd137883137905%_
                                       (##car _%e137882137902%_))
                                      (_%tl137884137907%_
                                       (##cdr _%e137882137902%_)))
                                  (let* ((_%rator137910%_ _%hd137883137905%_)
                                         (_%args137912%_ _%tl137884137907%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator137910%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args137912%_))))))
                              (_%E137878137890%_))))
                      (_%E137878137890%_)))))
          (_%E137877137914%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx137808%_)
        (let* ((_%e137809137825%_ _%stx137808%_)
               (_%E137811137829%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137809137825%_)))
               (_%E137810137871%_
                (lambda ()
                  (if (gx#stx-pair? _%e137809137825%_)
                      (let ((_%e137812137833%_
                             (gx#syntax-e _%e137809137825%_)))
                        (let ((_%hd137813137836%_ (##car _%e137812137833%_))
                              (_%tl137814137838%_ (##cdr _%e137812137833%_)))
                          (if (gx#stx-pair? _%tl137814137838%_)
                              (let ((_%e137815137841%_
                                     (gx#syntax-e _%tl137814137838%_)))
                                (let ((_%hd137816137844%_
                                       (##car _%e137815137841%_))
                                      (_%tl137817137846%_
                                       (##cdr _%e137815137841%_)))
                                  (let ((_%test137849%_ _%hd137816137844%_))
                                    (if (gx#stx-pair? _%tl137817137846%_)
                                        (let ((_%e137818137851%_
                                               (gx#syntax-e
                                                _%tl137817137846%_)))
                                          (let ((_%hd137819137854%_
                                                 (##car _%e137818137851%_))
                                                (_%tl137820137856%_
                                                 (##cdr _%e137818137851%_)))
                                            (let ((_%K137859%_
                                                   _%hd137819137854%_))
                                              (if (gx#stx-pair?
                                                   _%tl137820137856%_)
                                                  (let ((_%e137821137861%_
                                                         (gx#syntax-e
                                                          _%tl137820137856%_)))
                                                    (let ((_%hd137822137864%_
                                                           (##car _%e137821137861%_))
                                                          (_%tl137823137866%_
                                                           (##cdr _%e137821137861%_)))
                                                      (let ((_%E137869%_
                                                             _%hd137822137864%_))
                                                        (if (gx#stx-null?
                                                             _%tl137823137866%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test137849%_)
                                (cons (gx#core-compile-top-syntax _%K137859%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E137869%_)
                                            '()))))
                    (_%E137811137829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137811137829%_)))))
                                        (_%E137811137829%_)))))
                              (_%E137811137829%_))))
                      (_%E137811137829%_)))))
          (_%E137810137871%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx137767%_)
        (let* ((_%e137768137778%_ _%stx137767%_)
               (_%E137770137782%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137768137778%_)))
               (_%E137769137804%_
                (lambda ()
                  (if (gx#stx-pair? _%e137768137778%_)
                      (let ((_%e137771137786%_
                             (gx#syntax-e _%e137768137778%_)))
                        (let ((_%hd137772137789%_ (##car _%e137771137786%_))
                              (_%tl137773137791%_ (##cdr _%e137771137786%_)))
                          (if (gx#stx-pair? _%tl137773137791%_)
                              (let ((_%e137774137794%_
                                     (gx#syntax-e _%tl137773137791%_)))
                                (let ((_%hd137775137797%_
                                       (##car _%e137774137794%_))
                                      (_%tl137776137799%_
                                       (##cdr _%e137774137794%_)))
                                  (let ((_%id137802%_ _%hd137775137797%_))
                                    (if (gx#stx-null? _%tl137776137799%_)
                                        (if (gx#identifier? _%id137802%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id137802%_)
                                                        '()))
                                            (_%E137770137782%_))
                                        (_%E137770137782%_)))))
                              (_%E137770137782%_))))
                      (_%E137770137782%_)))))
          (_%E137769137804%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx137713%_)
        (let* ((_%e137714137727%_ _%stx137713%_)
               (_%E137716137731%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137714137727%_)))
               (_%E137715137763%_
                (lambda ()
                  (if (gx#stx-pair? _%e137714137727%_)
                      (let ((_%e137717137735%_
                             (gx#syntax-e _%e137714137727%_)))
                        (let ((_%hd137718137738%_ (##car _%e137717137735%_))
                              (_%tl137719137740%_ (##cdr _%e137717137735%_)))
                          (if (gx#stx-pair? _%tl137719137740%_)
                              (let ((_%e137720137743%_
                                     (gx#syntax-e _%tl137719137740%_)))
                                (let ((_%hd137721137746%_
                                       (##car _%e137720137743%_))
                                      (_%tl137722137748%_
                                       (##cdr _%e137720137743%_)))
                                  (let ((_%id137751%_ _%hd137721137746%_))
                                    (if (gx#stx-pair? _%tl137722137748%_)
                                        (let ((_%e137723137753%_
                                               (gx#syntax-e
                                                _%tl137722137748%_)))
                                          (let ((_%hd137724137756%_
                                                 (##car _%e137723137753%_))
                                                (_%tl137725137758%_
                                                 (##cdr _%e137723137753%_)))
                                            (let ((_%expr137761%_
                                                   _%hd137724137756%_))
                                              (if (gx#stx-null?
                                                   _%tl137725137758%_)
                                                  (if (gx#identifier?
                                                       _%id137751%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id137751%_)
                          (cons (gx#core-compile-top-syntax _%expr137761%_)
                                '())))
              (_%E137716137731%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137716137731%_)))))
                                        (_%E137716137731%_)))))
                              (_%E137716137731%_))))
                      (_%E137716137731%_)))))
          (_%E137715137763%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id137707%_)
        (let ((_%$e137709%_ (gx#resolve-identifier__0 _%id137707%_)))
          (if _%$e137709%_
              (##unchecked-structure-ref _%$e137709%_ '1 '#f '#f)
              _%id137707%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd137705%_)
        (if (gx#identifier? _%hd137705%_)
            (gx#core-compile-top-runtime-ref _%hd137705%_)
            '#f)))))
