(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1756715353)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx138860%_)
        (let* ((_%e138861138868%_ _%stx138860%_)
               (_%E138863138872%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138861138868%_)))
               (_%E138862138886%_
                (lambda ()
                  (if (gx#stx-pair? _%e138861138868%_)
                      (let ((_%e138864138876%_
                             (gx#syntax-e _%e138861138868%_)))
                        (let ((_%hd138865138879%_ (##car _%e138864138876%_))
                              (_%tl138866138881%_ (##cdr _%e138864138876%_)))
                          (let* ((_%form138884%_ _%hd138865138879%_)
                                 (__self138889
                                  (gx#syntax-local-e__0 _%form138884%_))
                                 (__method138890
                                  (__method-ref
                                   __self138889
                                   'compile-top-syntax)))
                            (if __method138890
                                (__method138890 __self138889 _%stx138860%_)
                                (begin
                                  (error '"Missing method"
                                         __self138889
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E138863138872%_)))))
          (_%E138862138886%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self138808%_ _%stx138809%_)
        (let* ((_%self138812%_ _%self138808%_)
               (_%self138821138829%_ _%self138812%_)
               (_%E138823138833%_
                (lambda ()
                  (error '"No clause matching"
                         _%self138821138829%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K138824138846%_
                (lambda (_%K138836%_)
                  (let ((_%$e138838%_ (gx#stx-source _%stx138809%_)))
                    (if _%$e138838%_
                        ((lambda (_%g138840138842%_)
                           (gx#stx-wrap-source
                            (_%K138836%_ _%stx138809%_)
                            _%g138840138842%_))
                         _%$e138838%_)
                        (_%K138836%_ _%stx138809%_)))))
               (_%e138825138849%_
                (##unchecked-structure-ref _%self138821138829%_ '1 '#f '#f))
               (_%e138826138852%_
                (##unchecked-structure-ref _%self138821138829%_ '2 '#f '#f))
               (_%e138827138855%_
                (##unchecked-structure-ref _%self138821138829%_ '3 '#f '#f))
               (_%K138858%_ _%e138827138855%_))
          (_%K138824138846%_ _%K138858%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx138682%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx138682%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx138652%_)
        (let* ((_%e138653138660%_ _%stx138652%_)
               (_%E138655138664%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138653138660%_)))
               (_%E138654138678%_
                (lambda ()
                  (if (gx#stx-pair? _%e138653138660%_)
                      (let ((_%e138656138668%_
                             (gx#syntax-e _%e138653138660%_)))
                        (let ((_%hd138657138671%_ (##car _%e138656138668%_))
                              (_%tl138658138673%_ (##cdr _%e138656138668%_)))
                          (let ((_%body138676%_ _%tl138658138673%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body138676%_)))))
                      (_%E138655138664%_)))))
          (_%E138654138678%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx138621%_)
        (let* ((_%e138622138629%_ _%stx138621%_)
               (_%E138624138633%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138622138629%_)))
               (_%E138623138648%_
                (lambda ()
                  (if (gx#stx-pair? _%e138622138629%_)
                      (let ((_%e138625138637%_
                             (gx#syntax-e _%e138622138629%_)))
                        (let ((_%hd138626138640%_ (##car _%e138625138637%_))
                              (_%tl138627138642%_ (##cdr _%e138625138637%_)))
                          (let ((_%body138645%_ _%tl138627138642%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body138645%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E138624138633%_)))))
          (_%E138623138648%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx138591%_)
        (let* ((_%e138592138599%_ _%stx138591%_)
               (_%E138594138603%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138592138599%_)))
               (_%E138593138617%_
                (lambda ()
                  (if (gx#stx-pair? _%e138592138599%_)
                      (let ((_%e138595138607%_
                             (gx#syntax-e _%e138592138599%_)))
                        (let ((_%hd138596138610%_ (##car _%e138595138607%_))
                              (_%tl138597138612%_ (##cdr _%e138595138607%_)))
                          (let ((_%body138615%_ _%tl138597138612%_))
                            (cons '%#begin-foreign _%body138615%_))))
                      (_%E138594138603%_)))))
          (_%E138593138617%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx138537%_)
        (let* ((_%e138538138551%_ _%stx138537%_)
               (_%E138540138555%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138538138551%_)))
               (_%E138539138587%_
                (lambda ()
                  (if (gx#stx-pair? _%e138538138551%_)
                      (let ((_%e138541138559%_
                             (gx#syntax-e _%e138538138551%_)))
                        (let ((_%hd138542138562%_ (##car _%e138541138559%_))
                              (_%tl138543138564%_ (##cdr _%e138541138559%_)))
                          (if (gx#stx-pair? _%tl138543138564%_)
                              (let ((_%e138544138567%_
                                     (gx#syntax-e _%tl138543138564%_)))
                                (let ((_%hd138545138570%_
                                       (##car _%e138544138567%_))
                                      (_%tl138546138572%_
                                       (##cdr _%e138544138567%_)))
                                  (let ((_%ann138575%_ _%hd138545138570%_))
                                    (if (gx#stx-pair? _%tl138546138572%_)
                                        (let ((_%e138547138577%_
                                               (gx#syntax-e
                                                _%tl138546138572%_)))
                                          (let ((_%hd138548138580%_
                                                 (##car _%e138547138577%_))
                                                (_%tl138549138582%_
                                                 (##cdr _%e138547138577%_)))
                                            (let ((_%expr138585%_
                                                   _%hd138548138580%_))
                                              (if (gx#stx-null?
                                                   _%tl138549138582%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr138585%_)
                                                  (_%E138540138555%_)))))
                                        (_%E138540138555%_)))))
                              (_%E138540138555%_))))
                      (_%E138540138555%_)))))
          (_%E138539138587%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx138507%_)
        (let* ((_%e138508138515%_ _%stx138507%_)
               (_%E138510138519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138508138515%_)))
               (_%E138509138533%_
                (lambda ()
                  (if (gx#stx-pair? _%e138508138515%_)
                      (let ((_%e138511138523%_
                             (gx#syntax-e _%e138508138515%_)))
                        (let ((_%hd138512138526%_ (##car _%e138511138523%_))
                              (_%tl138513138528%_ (##cdr _%e138511138523%_)))
                          (let ((_%body138531%_ _%tl138513138528%_))
                            (cons '%#import _%body138531%_))))
                      (_%E138510138519%_)))))
          (_%E138509138533%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx138464%_)
        (let* ((_%e138465138475%_ _%stx138464%_)
               (_%E138467138479%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138465138475%_)))
               (_%E138466138503%_
                (lambda ()
                  (if (gx#stx-pair? _%e138465138475%_)
                      (let ((_%e138468138483%_
                             (gx#syntax-e _%e138465138475%_)))
                        (let ((_%hd138469138486%_ (##car _%e138468138483%_))
                              (_%tl138470138488%_ (##cdr _%e138468138483%_)))
                          (if (gx#stx-pair? _%tl138470138488%_)
                              (let ((_%e138471138491%_
                                     (gx#syntax-e _%tl138470138488%_)))
                                (let ((_%hd138472138494%_
                                       (##car _%e138471138491%_))
                                      (_%tl138473138496%_
                                       (##cdr _%e138471138491%_)))
                                  (let* ((_%hd138499%_ _%hd138472138494%_)
                                         (_%body138501%_ _%tl138473138496%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd138499%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body138501%_))))))
                              (_%E138467138479%_))))
                      (_%E138467138479%_)))))
          (_%E138466138503%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx138434%_)
        (let* ((_%e138435138442%_ _%stx138434%_)
               (_%E138437138446%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138435138442%_)))
               (_%E138436138460%_
                (lambda ()
                  (if (gx#stx-pair? _%e138435138442%_)
                      (let ((_%e138438138450%_
                             (gx#syntax-e _%e138435138442%_)))
                        (let ((_%hd138439138453%_ (##car _%e138438138450%_))
                              (_%tl138440138455%_ (##cdr _%e138438138450%_)))
                          (let ((_%body138458%_ _%tl138440138455%_))
                            (cons '%#export _%body138458%_))))
                      (_%E138437138446%_)))))
          (_%E138436138460%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx138404%_)
        (let* ((_%e138405138412%_ _%stx138404%_)
               (_%E138407138416%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138405138412%_)))
               (_%E138406138430%_
                (lambda ()
                  (if (gx#stx-pair? _%e138405138412%_)
                      (let ((_%e138408138420%_
                             (gx#syntax-e _%e138405138412%_)))
                        (let ((_%hd138409138423%_ (##car _%e138408138420%_))
                              (_%tl138410138425%_ (##cdr _%e138408138420%_)))
                          (let ((_%body138428%_ _%tl138410138425%_))
                            (cons '%#provide _%body138428%_))))
                      (_%E138407138416%_)))))
          (_%E138406138430%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx138374%_)
        (let* ((_%e138375138382%_ _%stx138374%_)
               (_%E138377138386%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138375138382%_)))
               (_%E138376138400%_
                (lambda ()
                  (if (gx#stx-pair? _%e138375138382%_)
                      (let ((_%e138378138390%_
                             (gx#syntax-e _%e138375138382%_)))
                        (let ((_%hd138379138393%_ (##car _%e138378138390%_))
                              (_%tl138380138395%_ (##cdr _%e138378138390%_)))
                          (let ((_%body138398%_ _%tl138380138395%_))
                            (cons '%#extern _%body138398%_))))
                      (_%E138377138386%_)))))
          (_%E138376138400%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx138320%_)
        (let* ((_%e138321138334%_ _%stx138320%_)
               (_%E138323138338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138321138334%_)))
               (_%E138322138370%_
                (lambda ()
                  (if (gx#stx-pair? _%e138321138334%_)
                      (let ((_%e138324138342%_
                             (gx#syntax-e _%e138321138334%_)))
                        (let ((_%hd138325138345%_ (##car _%e138324138342%_))
                              (_%tl138326138347%_ (##cdr _%e138324138342%_)))
                          (if (gx#stx-pair? _%tl138326138347%_)
                              (let ((_%e138327138350%_
                                     (gx#syntax-e _%tl138326138347%_)))
                                (let ((_%hd138328138353%_
                                       (##car _%e138327138350%_))
                                      (_%tl138329138355%_
                                       (##cdr _%e138327138350%_)))
                                  (let ((_%hd138358%_ _%hd138328138353%_))
                                    (if (gx#stx-pair? _%tl138329138355%_)
                                        (let ((_%e138330138360%_
                                               (gx#syntax-e
                                                _%tl138329138355%_)))
                                          (let ((_%hd138331138363%_
                                                 (##car _%e138330138360%_))
                                                (_%tl138332138365%_
                                                 (##cdr _%e138330138360%_)))
                                            (let ((_%expr138368%_
                                                   _%hd138331138363%_))
                                              (if (gx#stx-null?
                                                   _%tl138332138365%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd138358%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr138368%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E138323138338%_)))))
                                        (_%E138323138338%_)))))
                              (_%E138323138338%_))))
                      (_%E138323138338%_)))))
          (_%E138322138370%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx138265%_)
        (let* ((_%e138266138279%_ _%stx138265%_)
               (_%E138268138283%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138266138279%_)))
               (_%E138267138316%_
                (lambda ()
                  (if (gx#stx-pair? _%e138266138279%_)
                      (let ((_%e138269138287%_
                             (gx#syntax-e _%e138266138279%_)))
                        (let ((_%hd138270138290%_ (##car _%e138269138287%_))
                              (_%tl138271138292%_ (##cdr _%e138269138287%_)))
                          (if (gx#stx-pair? _%tl138271138292%_)
                              (let ((_%e138272138295%_
                                     (gx#syntax-e _%tl138271138292%_)))
                                (let ((_%hd138273138298%_
                                       (##car _%e138272138295%_))
                                      (_%tl138274138300%_
                                       (##cdr _%e138272138295%_)))
                                  (let ((_%hd138303%_ _%hd138273138298%_))
                                    (if (gx#stx-pair? _%tl138274138300%_)
                                        (let ((_%e138275138305%_
                                               (gx#syntax-e
                                                _%tl138274138300%_)))
                                          (let ((_%hd138276138308%_
                                                 (##car _%e138275138305%_))
                                                (_%tl138277138310%_
                                                 (##cdr _%e138275138305%_)))
                                            (let ((_%expr138313%_
                                                   _%hd138276138308%_))
                                              (if (gx#stx-null?
                                                   _%tl138277138310%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd138303%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr138313%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E138268138283%_)))))
                                        (_%E138268138283%_)))))
                              (_%E138268138283%_))))
                      (_%E138268138283%_)))))
          (_%E138267138316%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx138235%_)
        (let* ((_%e138236138243%_ _%stx138235%_)
               (_%E138238138247%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138236138243%_)))
               (_%E138237138261%_
                (lambda ()
                  (if (gx#stx-pair? _%e138236138243%_)
                      (let ((_%e138239138251%_
                             (gx#syntax-e _%e138236138243%_)))
                        (let ((_%hd138240138254%_ (##car _%e138239138251%_))
                              (_%tl138241138256%_ (##cdr _%e138239138251%_)))
                          (let ((_%body138259%_ _%tl138241138256%_))
                            (cons '%#define-alias _%body138259%_))))
                      (_%E138238138247%_)))))
          (_%E138237138261%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx138205%_)
        (let* ((_%e138206138213%_ _%stx138205%_)
               (_%E138208138217%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138206138213%_)))
               (_%E138207138231%_
                (lambda ()
                  (if (gx#stx-pair? _%e138206138213%_)
                      (let ((_%e138209138221%_
                             (gx#syntax-e _%e138206138213%_)))
                        (let ((_%hd138210138224%_ (##car _%e138209138221%_))
                              (_%tl138211138226%_ (##cdr _%e138209138221%_)))
                          (let ((_%body138229%_ _%tl138211138226%_))
                            (cons '%#define-runtime _%body138229%_))))
                      (_%E138208138217%_)))))
          (_%E138207138231%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx138175%_)
        (let* ((_%e138176138183%_ _%stx138175%_)
               (_%E138178138187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138176138183%_)))
               (_%E138177138201%_
                (lambda ()
                  (if (gx#stx-pair? _%e138176138183%_)
                      (let ((_%e138179138191%_
                             (gx#syntax-e _%e138176138183%_)))
                        (let ((_%hd138180138194%_ (##car _%e138179138191%_))
                              (_%tl138181138196%_ (##cdr _%e138179138191%_)))
                          (let ((_%decls138199%_ _%tl138181138196%_))
                            (cons '%#declare _%decls138199%_))))
                      (_%E138178138187%_)))))
          (_%E138177138201%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx138145%_)
        (let* ((_%e138146138153%_ _%stx138145%_)
               (_%E138148138157%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138146138153%_)))
               (_%E138147138171%_
                (lambda ()
                  (if (gx#stx-pair? _%e138146138153%_)
                      (let ((_%e138149138161%_
                             (gx#syntax-e _%e138146138153%_)))
                        (let ((_%hd138150138164%_ (##car _%e138149138161%_))
                              (_%tl138151138166%_ (##cdr _%e138149138161%_)))
                          (let ((_%clause138169%_ _%tl138151138166%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause138169%_)))))
                      (_%E138148138157%_)))))
          (_%E138147138171%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx138102%_)
        (let* ((_%e138103138113%_ _%stx138102%_)
               (_%E138105138117%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138103138113%_)))
               (_%E138104138141%_
                (lambda ()
                  (if (gx#stx-pair? _%e138103138113%_)
                      (let ((_%e138106138121%_
                             (gx#syntax-e _%e138103138113%_)))
                        (let ((_%hd138107138124%_ (##car _%e138106138121%_))
                              (_%tl138108138126%_ (##cdr _%e138106138121%_)))
                          (let ((_%hd138129%_ _%hd138107138124%_))
                            (if (gx#stx-pair? _%tl138108138126%_)
                                (let ((_%e138109138131%_
                                       (gx#syntax-e _%tl138108138126%_)))
                                  (let ((_%hd138110138134%_
                                         (##car _%e138109138131%_))
                                        (_%tl138111138136%_
                                         (##cdr _%e138109138131%_)))
                                    (let ((_%body138139%_ _%hd138110138134%_))
                                      (if (gx#stx-null? _%tl138111138136%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd138129%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body138139%_)
                                                      '()))
                                          (_%E138105138117%_)))))
                                (_%E138105138117%_)))))
                      (_%E138105138117%_)))))
          (_%E138104138141%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx138072%_)
        (let* ((_%e138073138080%_ _%stx138072%_)
               (_%E138075138084%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138073138080%_)))
               (_%E138074138098%_
                (lambda ()
                  (if (gx#stx-pair? _%e138073138080%_)
                      (let ((_%e138076138088%_
                             (gx#syntax-e _%e138073138080%_)))
                        (let ((_%hd138077138091%_ (##car _%e138076138088%_))
                              (_%tl138078138093%_ (##cdr _%e138076138088%_)))
                          (let ((_%clauses138096%_ _%tl138078138093%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses138096%_)))))
                      (_%E138075138084%_)))))
          (_%E138074138098%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx138007%_ _%form138008%_)
        (let* ((_%e138009138022%_ _%stx138007%_)
               (_%E138011138026%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138009138022%_)))
               (_%E138010138058%_
                (lambda ()
                  (if (gx#stx-pair? _%e138009138022%_)
                      (let ((_%e138012138030%_
                             (gx#syntax-e _%e138009138022%_)))
                        (let ((_%hd138013138033%_ (##car _%e138012138030%_))
                              (_%tl138014138035%_ (##cdr _%e138012138030%_)))
                          (if (gx#stx-pair? _%tl138014138035%_)
                              (let ((_%e138015138038%_
                                     (gx#syntax-e _%tl138014138035%_)))
                                (let ((_%hd138016138041%_
                                       (##car _%e138015138038%_))
                                      (_%tl138017138043%_
                                       (##cdr _%e138015138038%_)))
                                  (let ((_%hd138046%_ _%hd138016138041%_))
                                    (if (gx#stx-pair? _%tl138017138043%_)
                                        (let ((_%e138018138048%_
                                               (gx#syntax-e
                                                _%tl138017138043%_)))
                                          (let ((_%hd138019138051%_
                                                 (##car _%e138018138048%_))
                                                (_%tl138020138053%_
                                                 (##cdr _%e138018138048%_)))
                                            (let ((_%body138056%_
                                                   _%hd138019138051%_))
                                              (if (gx#stx-null?
                                                   _%tl138020138053%_)
                                                  (cons _%form138008%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd138046%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body138056%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E138011138026%_)))))
                                        (_%E138011138026%_)))))
                              (_%E138011138026%_))))
                      (_%E138011138026%_)))))
          (_%E138010138058%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx138065%_)
        (let ((_%form138067%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx138065%_ _%form138067%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g138891_
        (let ((_g138892_ (##length _g138891_)))
          (cond ((##fx= _g138892_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g138891_))
                ((##fx= _g138892_ 2)
                 (apply gx#core-compile-top-let-values%__% _g138891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g138891_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx138004%_)
        (gx#core-compile-top-let-values%__% _%stx138004%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx138002%_)
        (gx#core-compile-top-let-values%__% _%stx138002%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx137961%_)
        (let* ((_%e137962137972%_ _%stx137961%_)
               (_%E137964137976%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137962137972%_)))
               (_%E137963137998%_
                (lambda ()
                  (if (gx#stx-pair? _%e137962137972%_)
                      (let ((_%e137965137980%_
                             (gx#syntax-e _%e137962137972%_)))
                        (let ((_%hd137966137983%_ (##car _%e137965137980%_))
                              (_%tl137967137985%_ (##cdr _%e137965137980%_)))
                          (if (gx#stx-pair? _%tl137967137985%_)
                              (let ((_%e137968137988%_
                                     (gx#syntax-e _%tl137967137985%_)))
                                (let ((_%hd137969137991%_
                                       (##car _%e137968137988%_))
                                      (_%tl137970137993%_
                                       (##cdr _%e137968137988%_)))
                                  (let ((_%e137996%_ _%hd137969137991%_))
                                    (if (gx#stx-null? _%tl137970137993%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e137996%_)
                                                    '()))
                                        (_%E137964137976%_)))))
                              (_%E137964137976%_))))
                      (_%E137964137976%_)))))
          (_%E137963137998%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx137920%_)
        (let* ((_%e137921137931%_ _%stx137920%_)
               (_%E137923137935%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137921137931%_)))
               (_%E137922137957%_
                (lambda ()
                  (if (gx#stx-pair? _%e137921137931%_)
                      (let ((_%e137924137939%_
                             (gx#syntax-e _%e137921137931%_)))
                        (let ((_%hd137925137942%_ (##car _%e137924137939%_))
                              (_%tl137926137944%_ (##cdr _%e137924137939%_)))
                          (if (gx#stx-pair? _%tl137926137944%_)
                              (let ((_%e137927137947%_
                                     (gx#syntax-e _%tl137926137944%_)))
                                (let ((_%hd137928137950%_
                                       (##car _%e137927137947%_))
                                      (_%tl137929137952%_
                                       (##cdr _%e137927137947%_)))
                                  (let ((_%e137955%_ _%hd137928137950%_))
                                    (if (gx#stx-null? _%tl137929137952%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e137955%_)
                                                    '()))
                                        (_%E137923137935%_)))))
                              (_%E137923137935%_))))
                      (_%E137923137935%_)))))
          (_%E137922137957%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx137877%_)
        (let* ((_%e137878137888%_ _%stx137877%_)
               (_%E137880137892%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137878137888%_)))
               (_%E137879137916%_
                (lambda ()
                  (if (gx#stx-pair? _%e137878137888%_)
                      (let ((_%e137881137896%_
                             (gx#syntax-e _%e137878137888%_)))
                        (let ((_%hd137882137899%_ (##car _%e137881137896%_))
                              (_%tl137883137901%_ (##cdr _%e137881137896%_)))
                          (if (gx#stx-pair? _%tl137883137901%_)
                              (let ((_%e137884137904%_
                                     (gx#syntax-e _%tl137883137901%_)))
                                (let ((_%hd137885137907%_
                                       (##car _%e137884137904%_))
                                      (_%tl137886137909%_
                                       (##cdr _%e137884137904%_)))
                                  (let* ((_%rator137912%_ _%hd137885137907%_)
                                         (_%args137914%_ _%tl137886137909%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator137912%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args137914%_))))))
                              (_%E137880137892%_))))
                      (_%E137880137892%_)))))
          (_%E137879137916%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx137810%_)
        (let* ((_%e137811137827%_ _%stx137810%_)
               (_%E137813137831%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137811137827%_)))
               (_%E137812137873%_
                (lambda ()
                  (if (gx#stx-pair? _%e137811137827%_)
                      (let ((_%e137814137835%_
                             (gx#syntax-e _%e137811137827%_)))
                        (let ((_%hd137815137838%_ (##car _%e137814137835%_))
                              (_%tl137816137840%_ (##cdr _%e137814137835%_)))
                          (if (gx#stx-pair? _%tl137816137840%_)
                              (let ((_%e137817137843%_
                                     (gx#syntax-e _%tl137816137840%_)))
                                (let ((_%hd137818137846%_
                                       (##car _%e137817137843%_))
                                      (_%tl137819137848%_
                                       (##cdr _%e137817137843%_)))
                                  (let ((_%test137851%_ _%hd137818137846%_))
                                    (if (gx#stx-pair? _%tl137819137848%_)
                                        (let ((_%e137820137853%_
                                               (gx#syntax-e
                                                _%tl137819137848%_)))
                                          (let ((_%hd137821137856%_
                                                 (##car _%e137820137853%_))
                                                (_%tl137822137858%_
                                                 (##cdr _%e137820137853%_)))
                                            (let ((_%K137861%_
                                                   _%hd137821137856%_))
                                              (if (gx#stx-pair?
                                                   _%tl137822137858%_)
                                                  (let ((_%e137823137863%_
                                                         (gx#syntax-e
                                                          _%tl137822137858%_)))
                                                    (let ((_%hd137824137866%_
                                                           (##car _%e137823137863%_))
                                                          (_%tl137825137868%_
                                                           (##cdr _%e137823137863%_)))
                                                      (let ((_%E137871%_
                                                             _%hd137824137866%_))
                                                        (if (gx#stx-null?
                                                             _%tl137825137868%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test137851%_)
                                (cons (gx#core-compile-top-syntax _%K137861%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E137871%_)
                                            '()))))
                    (_%E137813137831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137813137831%_)))))
                                        (_%E137813137831%_)))))
                              (_%E137813137831%_))))
                      (_%E137813137831%_)))))
          (_%E137812137873%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx137769%_)
        (let* ((_%e137770137780%_ _%stx137769%_)
               (_%E137772137784%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137770137780%_)))
               (_%E137771137806%_
                (lambda ()
                  (if (gx#stx-pair? _%e137770137780%_)
                      (let ((_%e137773137788%_
                             (gx#syntax-e _%e137770137780%_)))
                        (let ((_%hd137774137791%_ (##car _%e137773137788%_))
                              (_%tl137775137793%_ (##cdr _%e137773137788%_)))
                          (if (gx#stx-pair? _%tl137775137793%_)
                              (let ((_%e137776137796%_
                                     (gx#syntax-e _%tl137775137793%_)))
                                (let ((_%hd137777137799%_
                                       (##car _%e137776137796%_))
                                      (_%tl137778137801%_
                                       (##cdr _%e137776137796%_)))
                                  (let ((_%id137804%_ _%hd137777137799%_))
                                    (if (gx#stx-null? _%tl137778137801%_)
                                        (if (gx#identifier? _%id137804%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id137804%_)
                                                        '()))
                                            (_%E137772137784%_))
                                        (_%E137772137784%_)))))
                              (_%E137772137784%_))))
                      (_%E137772137784%_)))))
          (_%E137771137806%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx137715%_)
        (let* ((_%e137716137729%_ _%stx137715%_)
               (_%E137718137733%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137716137729%_)))
               (_%E137717137765%_
                (lambda ()
                  (if (gx#stx-pair? _%e137716137729%_)
                      (let ((_%e137719137737%_
                             (gx#syntax-e _%e137716137729%_)))
                        (let ((_%hd137720137740%_ (##car _%e137719137737%_))
                              (_%tl137721137742%_ (##cdr _%e137719137737%_)))
                          (if (gx#stx-pair? _%tl137721137742%_)
                              (let ((_%e137722137745%_
                                     (gx#syntax-e _%tl137721137742%_)))
                                (let ((_%hd137723137748%_
                                       (##car _%e137722137745%_))
                                      (_%tl137724137750%_
                                       (##cdr _%e137722137745%_)))
                                  (let ((_%id137753%_ _%hd137723137748%_))
                                    (if (gx#stx-pair? _%tl137724137750%_)
                                        (let ((_%e137725137755%_
                                               (gx#syntax-e
                                                _%tl137724137750%_)))
                                          (let ((_%hd137726137758%_
                                                 (##car _%e137725137755%_))
                                                (_%tl137727137760%_
                                                 (##cdr _%e137725137755%_)))
                                            (let ((_%expr137763%_
                                                   _%hd137726137758%_))
                                              (if (gx#stx-null?
                                                   _%tl137727137760%_)
                                                  (if (gx#identifier?
                                                       _%id137753%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id137753%_)
                          (cons (gx#core-compile-top-syntax _%expr137763%_)
                                '())))
              (_%E137718137733%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137718137733%_)))))
                                        (_%E137718137733%_)))))
                              (_%E137718137733%_))))
                      (_%E137718137733%_)))))
          (_%E137717137765%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id137709%_)
        (let ((_%$e137711%_ (gx#resolve-identifier__0 _%id137709%_)))
          (if _%$e137711%_
              (##unchecked-structure-ref _%$e137711%_ '1 '#f '#f)
              _%id137709%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd137707%_)
        (if (gx#identifier? _%hd137707%_)
            (gx#core-compile-top-runtime-ref _%hd137707%_)
            '#f)))))
