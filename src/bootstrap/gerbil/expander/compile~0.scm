(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712773525)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx127209%_)
        (let* ((_%e127210127217%_ _%stx127209%_)
               (_%E127212127221%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127210127217%_)))
               (_%E127211127235%_
                (lambda ()
                  (if (gx#stx-pair? _%e127210127217%_)
                      (let ((_%e127213127225%_
                             (gx#syntax-e _%e127210127217%_)))
                        (let ((_%hd127214127228%_ (##car _%e127213127225%_))
                              (_%tl127215127230%_ (##cdr _%e127213127225%_)))
                          (let ((_%form127233%_ _%hd127214127228%_))
                            (if '#t
                                (let* ((__self127238
                                        (gx#syntax-local-e__0 _%form127233%_))
                                       (__method127239
                                        (__method-ref
                                         __self127238
                                         'compile-top-syntax)))
                                  (if __method127239
                                      (__method127239
                                       __self127238
                                       _%stx127209%_)
                                      (begin
                                        (error '"Missing method"
                                               __self127238
                                               'compile-top-syntax)
                                        '#!void)))
                                (_%E127212127221%_)))))
                      (_%E127212127221%_)))))
          (_%E127211127235%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126052127155%_ _%stx127157%_)
        (let* ((_%self127159%_ _%self126052127155%_)
               (_%self127161%_ _%self127159%_)
               (_%self127170127178%_ _%self127161%_)
               (_%E127172127182%_
                (lambda ()
                  (error '"No clause matching"
                         _%self127170127178%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K127173127195%_
                (lambda (_%K127185%_)
                  (let ((_%$e127187%_ (gx#stx-source _%stx127157%_)))
                    (if _%$e127187%_
                        ((lambda (_%g127189127191%_)
                           (gx#stx-wrap-source
                            (_%K127185%_ _%stx127157%_)
                            _%g127189127191%_))
                         _%$e127187%_)
                        (_%K127185%_ _%stx127157%_))))))
          (if '#t
              (let* ((_%e127174127198%_
                      (##unchecked-structure-ref
                       _%self127170127178%_
                       '1
                       '#f
                       '#f))
                     (_%e127175127201%_
                      (##unchecked-structure-ref
                       _%self127170127178%_
                       '2
                       '#f
                       '#f))
                     (_%e127176127204%_
                      (##unchecked-structure-ref
                       _%self127170127178%_
                       '3
                       '#f
                       '#f))
                     (_%K127207%_ _%e127176127204%_))
                (_%K127173127195%_ _%K127207%_))
              (_%E127172127182%_)))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx127029%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx127029%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126999%_)
        (let* ((_%e127000127007%_ _%stx126999%_)
               (_%E127002127011%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127000127007%_)))
               (_%E127001127025%_
                (lambda ()
                  (if (gx#stx-pair? _%e127000127007%_)
                      (let ((_%e127003127015%_
                             (gx#syntax-e _%e127000127007%_)))
                        (let ((_%hd127004127018%_ (##car _%e127003127015%_))
                              (_%tl127005127020%_ (##cdr _%e127003127015%_)))
                          (let ((_%body127023%_ _%tl127005127020%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body127023%_))
                                (_%E127002127011%_)))))
                      (_%E127002127011%_)))))
          (_%E127001127025%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126968%_)
        (let* ((_%e126969126976%_ _%stx126968%_)
               (_%E126971126980%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126969126976%_)))
               (_%E126970126995%_
                (lambda ()
                  (if (gx#stx-pair? _%e126969126976%_)
                      (let ((_%e126972126984%_
                             (gx#syntax-e _%e126969126976%_)))
                        (let ((_%hd126973126987%_ (##car _%e126972126984%_))
                              (_%tl126974126989%_ (##cdr _%e126972126984%_)))
                          (let ((_%body126992%_ _%tl126974126989%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126992%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126971126980%_)))))
                      (_%E126971126980%_)))))
          (_%E126970126995%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126938%_)
        (let* ((_%e126939126946%_ _%stx126938%_)
               (_%E126941126950%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126939126946%_)))
               (_%E126940126964%_
                (lambda ()
                  (if (gx#stx-pair? _%e126939126946%_)
                      (let ((_%e126942126954%_
                             (gx#syntax-e _%e126939126946%_)))
                        (let ((_%hd126943126957%_ (##car _%e126942126954%_))
                              (_%tl126944126959%_ (##cdr _%e126942126954%_)))
                          (let ((_%body126962%_ _%tl126944126959%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126962%_)
                                (_%E126941126950%_)))))
                      (_%E126941126950%_)))))
          (_%E126940126964%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126884%_)
        (let* ((_%e126885126898%_ _%stx126884%_)
               (_%E126887126902%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126885126898%_)))
               (_%E126886126934%_
                (lambda ()
                  (if (gx#stx-pair? _%e126885126898%_)
                      (let ((_%e126888126906%_
                             (gx#syntax-e _%e126885126898%_)))
                        (let ((_%hd126889126909%_ (##car _%e126888126906%_))
                              (_%tl126890126911%_ (##cdr _%e126888126906%_)))
                          (if (gx#stx-pair? _%tl126890126911%_)
                              (let ((_%e126891126914%_
                                     (gx#syntax-e _%tl126890126911%_)))
                                (let ((_%hd126892126917%_
                                       (##car _%e126891126914%_))
                                      (_%tl126893126919%_
                                       (##cdr _%e126891126914%_)))
                                  (let ((_%ann126922%_ _%hd126892126917%_))
                                    (if (gx#stx-pair? _%tl126893126919%_)
                                        (let ((_%e126894126924%_
                                               (gx#syntax-e
                                                _%tl126893126919%_)))
                                          (let ((_%hd126895126927%_
                                                 (##car _%e126894126924%_))
                                                (_%tl126896126929%_
                                                 (##cdr _%e126894126924%_)))
                                            (let ((_%expr126932%_
                                                   _%hd126895126927%_))
                                              (if (gx#stx-null?
                                                   _%tl126896126929%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126932%_)
                                                      (_%E126887126902%_))
                                                  (_%E126887126902%_)))))
                                        (_%E126887126902%_)))))
                              (_%E126887126902%_))))
                      (_%E126887126902%_)))))
          (_%E126886126934%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126854%_)
        (let* ((_%e126855126862%_ _%stx126854%_)
               (_%E126857126866%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126855126862%_)))
               (_%E126856126880%_
                (lambda ()
                  (if (gx#stx-pair? _%e126855126862%_)
                      (let ((_%e126858126870%_
                             (gx#syntax-e _%e126855126862%_)))
                        (let ((_%hd126859126873%_ (##car _%e126858126870%_))
                              (_%tl126860126875%_ (##cdr _%e126858126870%_)))
                          (let ((_%body126878%_ _%tl126860126875%_))
                            (if '#t
                                (cons '%#import _%body126878%_)
                                (_%E126857126866%_)))))
                      (_%E126857126866%_)))))
          (_%E126856126880%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126811%_)
        (let* ((_%e126812126822%_ _%stx126811%_)
               (_%E126814126826%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126812126822%_)))
               (_%E126813126850%_
                (lambda ()
                  (if (gx#stx-pair? _%e126812126822%_)
                      (let ((_%e126815126830%_
                             (gx#syntax-e _%e126812126822%_)))
                        (let ((_%hd126816126833%_ (##car _%e126815126830%_))
                              (_%tl126817126835%_ (##cdr _%e126815126830%_)))
                          (if (gx#stx-pair? _%tl126817126835%_)
                              (let ((_%e126818126838%_
                                     (gx#syntax-e _%tl126817126835%_)))
                                (let ((_%hd126819126841%_
                                       (##car _%e126818126838%_))
                                      (_%tl126820126843%_
                                       (##cdr _%e126818126838%_)))
                                  (let* ((_%hd126846%_ _%hd126819126841%_)
                                         (_%body126848%_ _%tl126820126843%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126846%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126848%_)))
                                        (_%E126814126826%_)))))
                              (_%E126814126826%_))))
                      (_%E126814126826%_)))))
          (_%E126813126850%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126781%_)
        (let* ((_%e126782126789%_ _%stx126781%_)
               (_%E126784126793%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126782126789%_)))
               (_%E126783126807%_
                (lambda ()
                  (if (gx#stx-pair? _%e126782126789%_)
                      (let ((_%e126785126797%_
                             (gx#syntax-e _%e126782126789%_)))
                        (let ((_%hd126786126800%_ (##car _%e126785126797%_))
                              (_%tl126787126802%_ (##cdr _%e126785126797%_)))
                          (let ((_%body126805%_ _%tl126787126802%_))
                            (if '#t
                                (cons '%#export _%body126805%_)
                                (_%E126784126793%_)))))
                      (_%E126784126793%_)))))
          (_%E126783126807%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126751%_)
        (let* ((_%e126752126759%_ _%stx126751%_)
               (_%E126754126763%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126752126759%_)))
               (_%E126753126777%_
                (lambda ()
                  (if (gx#stx-pair? _%e126752126759%_)
                      (let ((_%e126755126767%_
                             (gx#syntax-e _%e126752126759%_)))
                        (let ((_%hd126756126770%_ (##car _%e126755126767%_))
                              (_%tl126757126772%_ (##cdr _%e126755126767%_)))
                          (let ((_%body126775%_ _%tl126757126772%_))
                            (if '#t
                                (cons '%#provide _%body126775%_)
                                (_%E126754126763%_)))))
                      (_%E126754126763%_)))))
          (_%E126753126777%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126721%_)
        (let* ((_%e126722126729%_ _%stx126721%_)
               (_%E126724126733%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126722126729%_)))
               (_%E126723126747%_
                (lambda ()
                  (if (gx#stx-pair? _%e126722126729%_)
                      (let ((_%e126725126737%_
                             (gx#syntax-e _%e126722126729%_)))
                        (let ((_%hd126726126740%_ (##car _%e126725126737%_))
                              (_%tl126727126742%_ (##cdr _%e126725126737%_)))
                          (let ((_%body126745%_ _%tl126727126742%_))
                            (if '#t
                                (cons '%#extern _%body126745%_)
                                (_%E126724126733%_)))))
                      (_%E126724126733%_)))))
          (_%E126723126747%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126667%_)
        (let* ((_%e126668126681%_ _%stx126667%_)
               (_%E126670126685%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126668126681%_)))
               (_%E126669126717%_
                (lambda ()
                  (if (gx#stx-pair? _%e126668126681%_)
                      (let ((_%e126671126689%_
                             (gx#syntax-e _%e126668126681%_)))
                        (let ((_%hd126672126692%_ (##car _%e126671126689%_))
                              (_%tl126673126694%_ (##cdr _%e126671126689%_)))
                          (if (gx#stx-pair? _%tl126673126694%_)
                              (let ((_%e126674126697%_
                                     (gx#syntax-e _%tl126673126694%_)))
                                (let ((_%hd126675126700%_
                                       (##car _%e126674126697%_))
                                      (_%tl126676126702%_
                                       (##cdr _%e126674126697%_)))
                                  (let ((_%hd126705%_ _%hd126675126700%_))
                                    (if (gx#stx-pair? _%tl126676126702%_)
                                        (let ((_%e126677126707%_
                                               (gx#syntax-e
                                                _%tl126676126702%_)))
                                          (let ((_%hd126678126710%_
                                                 (##car _%e126677126707%_))
                                                (_%tl126679126712%_
                                                 (##cdr _%e126677126707%_)))
                                            (let ((_%expr126715%_
                                                   _%hd126678126710%_))
                                              (if (gx#stx-null?
                                                   _%tl126679126712%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126705%_)
                          (cons (gx#core-compile-top-syntax _%expr126715%_)
                                '())))
              (_%E126670126685%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126670126685%_)))))
                                        (_%E126670126685%_)))))
                              (_%E126670126685%_))))
                      (_%E126670126685%_)))))
          (_%E126669126717%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx126612%_)
        (let* ((_%e126613126626%_ _%stx126612%_)
               (_%E126615126630%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126613126626%_)))
               (_%E126614126663%_
                (lambda ()
                  (if (gx#stx-pair? _%e126613126626%_)
                      (let ((_%e126616126634%_
                             (gx#syntax-e _%e126613126626%_)))
                        (let ((_%hd126617126637%_ (##car _%e126616126634%_))
                              (_%tl126618126639%_ (##cdr _%e126616126634%_)))
                          (if (gx#stx-pair? _%tl126618126639%_)
                              (let ((_%e126619126642%_
                                     (gx#syntax-e _%tl126618126639%_)))
                                (let ((_%hd126620126645%_
                                       (##car _%e126619126642%_))
                                      (_%tl126621126647%_
                                       (##cdr _%e126619126642%_)))
                                  (let ((_%hd126650%_ _%hd126620126645%_))
                                    (if (gx#stx-pair? _%tl126621126647%_)
                                        (let ((_%e126622126652%_
                                               (gx#syntax-e
                                                _%tl126621126647%_)))
                                          (let ((_%hd126623126655%_
                                                 (##car _%e126622126652%_))
                                                (_%tl126624126657%_
                                                 (##cdr _%e126622126652%_)))
                                            (let ((_%expr126660%_
                                                   _%hd126623126655%_))
                                              (if (gx#stx-null?
                                                   _%tl126624126657%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd126650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126660%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E126615126630%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126615126630%_)))))
                                        (_%E126615126630%_)))))
                              (_%E126615126630%_))))
                      (_%E126615126630%_)))))
          (_%E126614126663%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx126582%_)
        (let* ((_%e126583126590%_ _%stx126582%_)
               (_%E126585126594%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126583126590%_)))
               (_%E126584126608%_
                (lambda ()
                  (if (gx#stx-pair? _%e126583126590%_)
                      (let ((_%e126586126598%_
                             (gx#syntax-e _%e126583126590%_)))
                        (let ((_%hd126587126601%_ (##car _%e126586126598%_))
                              (_%tl126588126603%_ (##cdr _%e126586126598%_)))
                          (let ((_%body126606%_ _%tl126588126603%_))
                            (if '#t
                                (cons '%#define-alias _%body126606%_)
                                (_%E126585126594%_)))))
                      (_%E126585126594%_)))))
          (_%E126584126608%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx126552%_)
        (let* ((_%e126553126560%_ _%stx126552%_)
               (_%E126555126564%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126553126560%_)))
               (_%E126554126578%_
                (lambda ()
                  (if (gx#stx-pair? _%e126553126560%_)
                      (let ((_%e126556126568%_
                             (gx#syntax-e _%e126553126560%_)))
                        (let ((_%hd126557126571%_ (##car _%e126556126568%_))
                              (_%tl126558126573%_ (##cdr _%e126556126568%_)))
                          (let ((_%body126576%_ _%tl126558126573%_))
                            (if '#t
                                (cons '%#define-runtime _%body126576%_)
                                (_%E126555126564%_)))))
                      (_%E126555126564%_)))))
          (_%E126554126578%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx126522%_)
        (let* ((_%e126523126530%_ _%stx126522%_)
               (_%E126525126534%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126523126530%_)))
               (_%E126524126548%_
                (lambda ()
                  (if (gx#stx-pair? _%e126523126530%_)
                      (let ((_%e126526126538%_
                             (gx#syntax-e _%e126523126530%_)))
                        (let ((_%hd126527126541%_ (##car _%e126526126538%_))
                              (_%tl126528126543%_ (##cdr _%e126526126538%_)))
                          (let ((_%decls126546%_ _%tl126528126543%_))
                            (if '#t
                                (cons '%#declare _%decls126546%_)
                                (_%E126525126534%_)))))
                      (_%E126525126534%_)))))
          (_%E126524126548%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx126492%_)
        (let* ((_%e126493126500%_ _%stx126492%_)
               (_%E126495126504%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126493126500%_)))
               (_%E126494126518%_
                (lambda ()
                  (if (gx#stx-pair? _%e126493126500%_)
                      (let ((_%e126496126508%_
                             (gx#syntax-e _%e126493126500%_)))
                        (let ((_%hd126497126511%_ (##car _%e126496126508%_))
                              (_%tl126498126513%_ (##cdr _%e126496126508%_)))
                          (let ((_%clause126516%_ _%tl126498126513%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause126516%_))
                                (_%E126495126504%_)))))
                      (_%E126495126504%_)))))
          (_%E126494126518%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx126449%_)
        (let* ((_%e126450126460%_ _%stx126449%_)
               (_%E126452126464%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126450126460%_)))
               (_%E126451126488%_
                (lambda ()
                  (if (gx#stx-pair? _%e126450126460%_)
                      (let ((_%e126453126468%_
                             (gx#syntax-e _%e126450126460%_)))
                        (let ((_%hd126454126471%_ (##car _%e126453126468%_))
                              (_%tl126455126473%_ (##cdr _%e126453126468%_)))
                          (let ((_%hd126476%_ _%hd126454126471%_))
                            (if (gx#stx-pair? _%tl126455126473%_)
                                (let ((_%e126456126478%_
                                       (gx#syntax-e _%tl126455126473%_)))
                                  (let ((_%hd126457126481%_
                                         (##car _%e126456126478%_))
                                        (_%tl126458126483%_
                                         (##cdr _%e126456126478%_)))
                                    (let ((_%body126486%_ _%hd126457126481%_))
                                      (if (gx#stx-null? _%tl126458126483%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd126476%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body126486%_)
                                                          '()))
                                              (_%E126452126464%_))
                                          (_%E126452126464%_)))))
                                (_%E126452126464%_)))))
                      (_%E126452126464%_)))))
          (_%E126451126488%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx126419%_)
        (let* ((_%e126420126427%_ _%stx126419%_)
               (_%E126422126431%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126420126427%_)))
               (_%E126421126445%_
                (lambda ()
                  (if (gx#stx-pair? _%e126420126427%_)
                      (let ((_%e126423126435%_
                             (gx#syntax-e _%e126420126427%_)))
                        (let ((_%hd126424126438%_ (##car _%e126423126435%_))
                              (_%tl126425126440%_ (##cdr _%e126423126435%_)))
                          (let ((_%clauses126443%_ _%tl126425126440%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses126443%_))
                                (_%E126422126431%_)))))
                      (_%E126422126431%_)))))
          (_%E126421126445%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx126354%_ _%form126355%_)
        (let* ((_%e126356126369%_ _%stx126354%_)
               (_%E126358126373%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126356126369%_)))
               (_%E126357126405%_
                (lambda ()
                  (if (gx#stx-pair? _%e126356126369%_)
                      (let ((_%e126359126377%_
                             (gx#syntax-e _%e126356126369%_)))
                        (let ((_%hd126360126380%_ (##car _%e126359126377%_))
                              (_%tl126361126382%_ (##cdr _%e126359126377%_)))
                          (if (gx#stx-pair? _%tl126361126382%_)
                              (let ((_%e126362126385%_
                                     (gx#syntax-e _%tl126361126382%_)))
                                (let ((_%hd126363126388%_
                                       (##car _%e126362126385%_))
                                      (_%tl126364126390%_
                                       (##cdr _%e126362126385%_)))
                                  (let ((_%hd126393%_ _%hd126363126388%_))
                                    (if (gx#stx-pair? _%tl126364126390%_)
                                        (let ((_%e126365126395%_
                                               (gx#syntax-e
                                                _%tl126364126390%_)))
                                          (let ((_%hd126366126398%_
                                                 (##car _%e126365126395%_))
                                                (_%tl126367126400%_
                                                 (##cdr _%e126365126395%_)))
                                            (let ((_%body126403%_
                                                   _%hd126366126398%_))
                                              (if (gx#stx-null?
                                                   _%tl126367126400%_)
                                                  (if '#t
                                                      (cons _%form126355%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd126393%_)
                          (cons (gx#core-compile-top-syntax _%body126403%_)
                                '())))
              (_%E126358126373%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126358126373%_)))))
                                        (_%E126358126373%_)))))
                              (_%E126358126373%_))))
                      (_%E126358126373%_)))))
          (_%E126357126405%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx126412%_)
        (let ((_%form126414%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx126412%_ _%form126414%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g127241_
        (let ((_g127240_ (##length _g127241_)))
          (cond ((##fx= _g127240_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g127241_))
                ((##fx= _g127240_ 2)
                 (apply gx#core-compile-top-let-values%__% _g127241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g127241_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx126351%_)
        (gx#core-compile-top-let-values%__% _%stx126351%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx126349%_)
        (gx#core-compile-top-let-values%__% _%stx126349%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx126308%_)
        (let* ((_%e126309126319%_ _%stx126308%_)
               (_%E126311126323%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126309126319%_)))
               (_%E126310126345%_
                (lambda ()
                  (if (gx#stx-pair? _%e126309126319%_)
                      (let ((_%e126312126327%_
                             (gx#syntax-e _%e126309126319%_)))
                        (let ((_%hd126313126330%_ (##car _%e126312126327%_))
                              (_%tl126314126332%_ (##cdr _%e126312126327%_)))
                          (if (gx#stx-pair? _%tl126314126332%_)
                              (let ((_%e126315126335%_
                                     (gx#syntax-e _%tl126314126332%_)))
                                (let ((_%hd126316126338%_
                                       (##car _%e126315126335%_))
                                      (_%tl126317126340%_
                                       (##cdr _%e126315126335%_)))
                                  (let ((_%e126343%_ _%hd126316126338%_))
                                    (if (gx#stx-null? _%tl126317126340%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e126343%_)
                                                        '()))
                                            (_%E126311126323%_))
                                        (_%E126311126323%_)))))
                              (_%E126311126323%_))))
                      (_%E126311126323%_)))))
          (_%E126310126345%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx126267%_)
        (let* ((_%e126268126278%_ _%stx126267%_)
               (_%E126270126282%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126268126278%_)))
               (_%E126269126304%_
                (lambda ()
                  (if (gx#stx-pair? _%e126268126278%_)
                      (let ((_%e126271126286%_
                             (gx#syntax-e _%e126268126278%_)))
                        (let ((_%hd126272126289%_ (##car _%e126271126286%_))
                              (_%tl126273126291%_ (##cdr _%e126271126286%_)))
                          (if (gx#stx-pair? _%tl126273126291%_)
                              (let ((_%e126274126294%_
                                     (gx#syntax-e _%tl126273126291%_)))
                                (let ((_%hd126275126297%_
                                       (##car _%e126274126294%_))
                                      (_%tl126276126299%_
                                       (##cdr _%e126274126294%_)))
                                  (let ((_%e126302%_ _%hd126275126297%_))
                                    (if (gx#stx-null? _%tl126276126299%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e126302%_)
                                                        '()))
                                            (_%E126270126282%_))
                                        (_%E126270126282%_)))))
                              (_%E126270126282%_))))
                      (_%E126270126282%_)))))
          (_%E126269126304%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx126224%_)
        (let* ((_%e126225126235%_ _%stx126224%_)
               (_%E126227126239%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126225126235%_)))
               (_%E126226126263%_
                (lambda ()
                  (if (gx#stx-pair? _%e126225126235%_)
                      (let ((_%e126228126243%_
                             (gx#syntax-e _%e126225126235%_)))
                        (let ((_%hd126229126246%_ (##car _%e126228126243%_))
                              (_%tl126230126248%_ (##cdr _%e126228126243%_)))
                          (if (gx#stx-pair? _%tl126230126248%_)
                              (let ((_%e126231126251%_
                                     (gx#syntax-e _%tl126230126248%_)))
                                (let ((_%hd126232126254%_
                                       (##car _%e126231126251%_))
                                      (_%tl126233126256%_
                                       (##cdr _%e126231126251%_)))
                                  (let* ((_%rator126259%_ _%hd126232126254%_)
                                         (_%args126261%_ _%tl126233126256%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator126259%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args126261%_)))
                                        (_%E126227126239%_)))))
                              (_%E126227126239%_))))
                      (_%E126227126239%_)))))
          (_%E126226126263%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx126157%_)
        (let* ((_%e126158126174%_ _%stx126157%_)
               (_%E126160126178%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126158126174%_)))
               (_%E126159126220%_
                (lambda ()
                  (if (gx#stx-pair? _%e126158126174%_)
                      (let ((_%e126161126182%_
                             (gx#syntax-e _%e126158126174%_)))
                        (let ((_%hd126162126185%_ (##car _%e126161126182%_))
                              (_%tl126163126187%_ (##cdr _%e126161126182%_)))
                          (if (gx#stx-pair? _%tl126163126187%_)
                              (let ((_%e126164126190%_
                                     (gx#syntax-e _%tl126163126187%_)))
                                (let ((_%hd126165126193%_
                                       (##car _%e126164126190%_))
                                      (_%tl126166126195%_
                                       (##cdr _%e126164126190%_)))
                                  (let ((_%test126198%_ _%hd126165126193%_))
                                    (if (gx#stx-pair? _%tl126166126195%_)
                                        (let ((_%e126167126200%_
                                               (gx#syntax-e
                                                _%tl126166126195%_)))
                                          (let ((_%hd126168126203%_
                                                 (##car _%e126167126200%_))
                                                (_%tl126169126205%_
                                                 (##cdr _%e126167126200%_)))
                                            (let ((_%K126208%_
                                                   _%hd126168126203%_))
                                              (if (gx#stx-pair?
                                                   _%tl126169126205%_)
                                                  (let ((_%e126170126210%_
                                                         (gx#syntax-e
                                                          _%tl126169126205%_)))
                                                    (let ((_%hd126171126213%_
                                                           (##car _%e126170126210%_))
                                                          (_%tl126172126215%_
                                                           (##cdr _%e126170126210%_)))
                                                      (let ((_%E126218%_
                                                             _%hd126171126213%_))
                                                        (if (gx#stx-null?
                                                             _%tl126172126215%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test126198%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K126208%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E126218%_)
                                                '()))))
                        (_%E126160126178%_))
                    (_%E126160126178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126160126178%_)))))
                                        (_%E126160126178%_)))))
                              (_%E126160126178%_))))
                      (_%E126160126178%_)))))
          (_%E126159126220%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx126116%_)
        (let* ((_%e126117126127%_ _%stx126116%_)
               (_%E126119126131%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126117126127%_)))
               (_%E126118126153%_
                (lambda ()
                  (if (gx#stx-pair? _%e126117126127%_)
                      (let ((_%e126120126135%_
                             (gx#syntax-e _%e126117126127%_)))
                        (let ((_%hd126121126138%_ (##car _%e126120126135%_))
                              (_%tl126122126140%_ (##cdr _%e126120126135%_)))
                          (if (gx#stx-pair? _%tl126122126140%_)
                              (let ((_%e126123126143%_
                                     (gx#syntax-e _%tl126122126140%_)))
                                (let ((_%hd126124126146%_
                                       (##car _%e126123126143%_))
                                      (_%tl126125126148%_
                                       (##cdr _%e126123126143%_)))
                                  (let ((_%id126151%_ _%hd126124126146%_))
                                    (if (gx#stx-null? _%tl126125126148%_)
                                        (if (gx#identifier? _%id126151%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id126151%_)
                                                        '()))
                                            (_%E126119126131%_))
                                        (_%E126119126131%_)))))
                              (_%E126119126131%_))))
                      (_%E126119126131%_)))))
          (_%E126118126153%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx126062%_)
        (let* ((_%e126063126076%_ _%stx126062%_)
               (_%E126065126080%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126063126076%_)))
               (_%E126064126112%_
                (lambda ()
                  (if (gx#stx-pair? _%e126063126076%_)
                      (let ((_%e126066126084%_
                             (gx#syntax-e _%e126063126076%_)))
                        (let ((_%hd126067126087%_ (##car _%e126066126084%_))
                              (_%tl126068126089%_ (##cdr _%e126066126084%_)))
                          (if (gx#stx-pair? _%tl126068126089%_)
                              (let ((_%e126069126092%_
                                     (gx#syntax-e _%tl126068126089%_)))
                                (let ((_%hd126070126095%_
                                       (##car _%e126069126092%_))
                                      (_%tl126071126097%_
                                       (##cdr _%e126069126092%_)))
                                  (let ((_%id126100%_ _%hd126070126095%_))
                                    (if (gx#stx-pair? _%tl126071126097%_)
                                        (let ((_%e126072126102%_
                                               (gx#syntax-e
                                                _%tl126071126097%_)))
                                          (let ((_%hd126073126105%_
                                                 (##car _%e126072126102%_))
                                                (_%tl126074126107%_
                                                 (##cdr _%e126072126102%_)))
                                            (let ((_%expr126110%_
                                                   _%hd126073126105%_))
                                              (if (gx#stx-null?
                                                   _%tl126074126107%_)
                                                  (if (gx#identifier?
                                                       _%id126100%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id126100%_)
                          (cons (gx#core-compile-top-syntax _%expr126110%_)
                                '())))
              (_%E126065126080%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126065126080%_)))))
                                        (_%E126065126080%_)))))
                              (_%E126065126080%_))))
                      (_%E126065126080%_)))))
          (_%E126064126112%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id126056%_)
        (let ((_%$e126058%_ (gx#resolve-identifier__0 _%id126056%_)))
          (if _%$e126058%_
              (##unchecked-structure-ref _%$e126058%_ '1 '#f '#f)
              _%id126056%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd126054%_)
        (if (gx#identifier? _%hd126054%_)
            (gx#core-compile-top-runtime-ref _%hd126054%_)
            '#f)))))
