(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1742222168)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx131398%_)
        (let* ((_%e131399131406%_ _%stx131398%_)
               (_%E131401131410%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131399131406%_)))
               (_%E131400131424%_
                (lambda ()
                  (if (gx#stx-pair? _%e131399131406%_)
                      (let ((_%e131402131414%_
                             (gx#syntax-e _%e131399131406%_)))
                        (let ((_%hd131403131417%_ (##car _%e131402131414%_))
                              (_%tl131404131419%_ (##cdr _%e131402131414%_)))
                          (let* ((_%form131422%_ _%hd131403131417%_)
                                 (__self131427
                                  (gx#syntax-local-e__0 _%form131422%_))
                                 (__method131428
                                  (__method-ref
                                   __self131427
                                   'compile-top-syntax)))
                            (if __method131428
                                (__method131428 __self131427 _%stx131398%_)
                                (begin
                                  (error '"Missing method"
                                         __self131427
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E131401131410%_)))))
          (_%E131400131424%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self130241131344%_ _%stx131346%_)
        (let* ((_%self131348%_ _%self130241131344%_)
               (_%self131350%_ _%self131348%_)
               (_%self131359131367%_ _%self131350%_)
               (_%E131361131371%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131359131367%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K131362131384%_
                (lambda (_%K131374%_)
                  (let ((_%$e131376%_ (gx#stx-source _%stx131346%_)))
                    (if _%$e131376%_
                        ((lambda (_%g131378131380%_)
                           (gx#stx-wrap-source
                            (_%K131374%_ _%stx131346%_)
                            _%g131378131380%_))
                         _%$e131376%_)
                        (_%K131374%_ _%stx131346%_)))))
               (_%e131363131387%_
                (##unchecked-structure-ref _%self131359131367%_ '1 '#f '#f))
               (_%e131364131390%_
                (##unchecked-structure-ref _%self131359131367%_ '2 '#f '#f))
               (_%e131365131393%_
                (##unchecked-structure-ref _%self131359131367%_ '3 '#f '#f))
               (_%K131396%_ _%e131365131393%_))
          (_%K131362131384%_ _%K131396%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx131218%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx131218%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx131188%_)
        (let* ((_%e131189131196%_ _%stx131188%_)
               (_%E131191131200%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131189131196%_)))
               (_%E131190131214%_
                (lambda ()
                  (if (gx#stx-pair? _%e131189131196%_)
                      (let ((_%e131192131204%_
                             (gx#syntax-e _%e131189131196%_)))
                        (let ((_%hd131193131207%_ (##car _%e131192131204%_))
                              (_%tl131194131209%_ (##cdr _%e131192131204%_)))
                          (let ((_%body131212%_ _%tl131194131209%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body131212%_)))))
                      (_%E131191131200%_)))))
          (_%E131190131214%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx131157%_)
        (let* ((_%e131158131165%_ _%stx131157%_)
               (_%E131160131169%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131158131165%_)))
               (_%E131159131184%_
                (lambda ()
                  (if (gx#stx-pair? _%e131158131165%_)
                      (let ((_%e131161131173%_
                             (gx#syntax-e _%e131158131165%_)))
                        (let ((_%hd131162131176%_ (##car _%e131161131173%_))
                              (_%tl131163131178%_ (##cdr _%e131161131173%_)))
                          (let ((_%body131181%_ _%tl131163131178%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body131181%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E131160131169%_)))))
          (_%E131159131184%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx131127%_)
        (let* ((_%e131128131135%_ _%stx131127%_)
               (_%E131130131139%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131128131135%_)))
               (_%E131129131153%_
                (lambda ()
                  (if (gx#stx-pair? _%e131128131135%_)
                      (let ((_%e131131131143%_
                             (gx#syntax-e _%e131128131135%_)))
                        (let ((_%hd131132131146%_ (##car _%e131131131143%_))
                              (_%tl131133131148%_ (##cdr _%e131131131143%_)))
                          (let ((_%body131151%_ _%tl131133131148%_))
                            (cons '%#begin-foreign _%body131151%_))))
                      (_%E131130131139%_)))))
          (_%E131129131153%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx131073%_)
        (let* ((_%e131074131087%_ _%stx131073%_)
               (_%E131076131091%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131074131087%_)))
               (_%E131075131123%_
                (lambda ()
                  (if (gx#stx-pair? _%e131074131087%_)
                      (let ((_%e131077131095%_
                             (gx#syntax-e _%e131074131087%_)))
                        (let ((_%hd131078131098%_ (##car _%e131077131095%_))
                              (_%tl131079131100%_ (##cdr _%e131077131095%_)))
                          (if (gx#stx-pair? _%tl131079131100%_)
                              (let ((_%e131080131103%_
                                     (gx#syntax-e _%tl131079131100%_)))
                                (let ((_%hd131081131106%_
                                       (##car _%e131080131103%_))
                                      (_%tl131082131108%_
                                       (##cdr _%e131080131103%_)))
                                  (let ((_%ann131111%_ _%hd131081131106%_))
                                    (if (gx#stx-pair? _%tl131082131108%_)
                                        (let ((_%e131083131113%_
                                               (gx#syntax-e
                                                _%tl131082131108%_)))
                                          (let ((_%hd131084131116%_
                                                 (##car _%e131083131113%_))
                                                (_%tl131085131118%_
                                                 (##cdr _%e131083131113%_)))
                                            (let ((_%expr131121%_
                                                   _%hd131084131116%_))
                                              (if (gx#stx-null?
                                                   _%tl131085131118%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr131121%_)
                                                  (_%E131076131091%_)))))
                                        (_%E131076131091%_)))))
                              (_%E131076131091%_))))
                      (_%E131076131091%_)))))
          (_%E131075131123%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx131043%_)
        (let* ((_%e131044131051%_ _%stx131043%_)
               (_%E131046131055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131044131051%_)))
               (_%E131045131069%_
                (lambda ()
                  (if (gx#stx-pair? _%e131044131051%_)
                      (let ((_%e131047131059%_
                             (gx#syntax-e _%e131044131051%_)))
                        (let ((_%hd131048131062%_ (##car _%e131047131059%_))
                              (_%tl131049131064%_ (##cdr _%e131047131059%_)))
                          (let ((_%body131067%_ _%tl131049131064%_))
                            (cons '%#import _%body131067%_))))
                      (_%E131046131055%_)))))
          (_%E131045131069%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx131000%_)
        (let* ((_%e131001131011%_ _%stx131000%_)
               (_%E131003131015%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131001131011%_)))
               (_%E131002131039%_
                (lambda ()
                  (if (gx#stx-pair? _%e131001131011%_)
                      (let ((_%e131004131019%_
                             (gx#syntax-e _%e131001131011%_)))
                        (let ((_%hd131005131022%_ (##car _%e131004131019%_))
                              (_%tl131006131024%_ (##cdr _%e131004131019%_)))
                          (if (gx#stx-pair? _%tl131006131024%_)
                              (let ((_%e131007131027%_
                                     (gx#syntax-e _%tl131006131024%_)))
                                (let ((_%hd131008131030%_
                                       (##car _%e131007131027%_))
                                      (_%tl131009131032%_
                                       (##cdr _%e131007131027%_)))
                                  (let* ((_%hd131035%_ _%hd131008131030%_)
                                         (_%body131037%_ _%tl131009131032%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd131035%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body131037%_))))))
                              (_%E131003131015%_))))
                      (_%E131003131015%_)))))
          (_%E131002131039%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx130970%_)
        (let* ((_%e130971130978%_ _%stx130970%_)
               (_%E130973130982%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130971130978%_)))
               (_%E130972130996%_
                (lambda ()
                  (if (gx#stx-pair? _%e130971130978%_)
                      (let ((_%e130974130986%_
                             (gx#syntax-e _%e130971130978%_)))
                        (let ((_%hd130975130989%_ (##car _%e130974130986%_))
                              (_%tl130976130991%_ (##cdr _%e130974130986%_)))
                          (let ((_%body130994%_ _%tl130976130991%_))
                            (cons '%#export _%body130994%_))))
                      (_%E130973130982%_)))))
          (_%E130972130996%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx130940%_)
        (let* ((_%e130941130948%_ _%stx130940%_)
               (_%E130943130952%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130941130948%_)))
               (_%E130942130966%_
                (lambda ()
                  (if (gx#stx-pair? _%e130941130948%_)
                      (let ((_%e130944130956%_
                             (gx#syntax-e _%e130941130948%_)))
                        (let ((_%hd130945130959%_ (##car _%e130944130956%_))
                              (_%tl130946130961%_ (##cdr _%e130944130956%_)))
                          (let ((_%body130964%_ _%tl130946130961%_))
                            (cons '%#provide _%body130964%_))))
                      (_%E130943130952%_)))))
          (_%E130942130966%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx130910%_)
        (let* ((_%e130911130918%_ _%stx130910%_)
               (_%E130913130922%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130911130918%_)))
               (_%E130912130936%_
                (lambda ()
                  (if (gx#stx-pair? _%e130911130918%_)
                      (let ((_%e130914130926%_
                             (gx#syntax-e _%e130911130918%_)))
                        (let ((_%hd130915130929%_ (##car _%e130914130926%_))
                              (_%tl130916130931%_ (##cdr _%e130914130926%_)))
                          (let ((_%body130934%_ _%tl130916130931%_))
                            (cons '%#extern _%body130934%_))))
                      (_%E130913130922%_)))))
          (_%E130912130936%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx130856%_)
        (let* ((_%e130857130870%_ _%stx130856%_)
               (_%E130859130874%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130857130870%_)))
               (_%E130858130906%_
                (lambda ()
                  (if (gx#stx-pair? _%e130857130870%_)
                      (let ((_%e130860130878%_
                             (gx#syntax-e _%e130857130870%_)))
                        (let ((_%hd130861130881%_ (##car _%e130860130878%_))
                              (_%tl130862130883%_ (##cdr _%e130860130878%_)))
                          (if (gx#stx-pair? _%tl130862130883%_)
                              (let ((_%e130863130886%_
                                     (gx#syntax-e _%tl130862130883%_)))
                                (let ((_%hd130864130889%_
                                       (##car _%e130863130886%_))
                                      (_%tl130865130891%_
                                       (##cdr _%e130863130886%_)))
                                  (let ((_%hd130894%_ _%hd130864130889%_))
                                    (if (gx#stx-pair? _%tl130865130891%_)
                                        (let ((_%e130866130896%_
                                               (gx#syntax-e
                                                _%tl130865130891%_)))
                                          (let ((_%hd130867130899%_
                                                 (##car _%e130866130896%_))
                                                (_%tl130868130901%_
                                                 (##cdr _%e130866130896%_)))
                                            (let ((_%expr130904%_
                                                   _%hd130867130899%_))
                                              (if (gx#stx-null?
                                                   _%tl130868130901%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd130894%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr130904%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130859130874%_)))))
                                        (_%E130859130874%_)))))
                              (_%E130859130874%_))))
                      (_%E130859130874%_)))))
          (_%E130858130906%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx130801%_)
        (let* ((_%e130802130815%_ _%stx130801%_)
               (_%E130804130819%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130802130815%_)))
               (_%E130803130852%_
                (lambda ()
                  (if (gx#stx-pair? _%e130802130815%_)
                      (let ((_%e130805130823%_
                             (gx#syntax-e _%e130802130815%_)))
                        (let ((_%hd130806130826%_ (##car _%e130805130823%_))
                              (_%tl130807130828%_ (##cdr _%e130805130823%_)))
                          (if (gx#stx-pair? _%tl130807130828%_)
                              (let ((_%e130808130831%_
                                     (gx#syntax-e _%tl130807130828%_)))
                                (let ((_%hd130809130834%_
                                       (##car _%e130808130831%_))
                                      (_%tl130810130836%_
                                       (##cdr _%e130808130831%_)))
                                  (let ((_%hd130839%_ _%hd130809130834%_))
                                    (if (gx#stx-pair? _%tl130810130836%_)
                                        (let ((_%e130811130841%_
                                               (gx#syntax-e
                                                _%tl130810130836%_)))
                                          (let ((_%hd130812130844%_
                                                 (##car _%e130811130841%_))
                                                (_%tl130813130846%_
                                                 (##cdr _%e130811130841%_)))
                                            (let ((_%expr130849%_
                                                   _%hd130812130844%_))
                                              (if (gx#stx-null?
                                                   _%tl130813130846%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd130839%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr130849%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130804130819%_)))))
                                        (_%E130804130819%_)))))
                              (_%E130804130819%_))))
                      (_%E130804130819%_)))))
          (_%E130803130852%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx130771%_)
        (let* ((_%e130772130779%_ _%stx130771%_)
               (_%E130774130783%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130772130779%_)))
               (_%E130773130797%_
                (lambda ()
                  (if (gx#stx-pair? _%e130772130779%_)
                      (let ((_%e130775130787%_
                             (gx#syntax-e _%e130772130779%_)))
                        (let ((_%hd130776130790%_ (##car _%e130775130787%_))
                              (_%tl130777130792%_ (##cdr _%e130775130787%_)))
                          (let ((_%body130795%_ _%tl130777130792%_))
                            (cons '%#define-alias _%body130795%_))))
                      (_%E130774130783%_)))))
          (_%E130773130797%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx130741%_)
        (let* ((_%e130742130749%_ _%stx130741%_)
               (_%E130744130753%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130742130749%_)))
               (_%E130743130767%_
                (lambda ()
                  (if (gx#stx-pair? _%e130742130749%_)
                      (let ((_%e130745130757%_
                             (gx#syntax-e _%e130742130749%_)))
                        (let ((_%hd130746130760%_ (##car _%e130745130757%_))
                              (_%tl130747130762%_ (##cdr _%e130745130757%_)))
                          (let ((_%body130765%_ _%tl130747130762%_))
                            (cons '%#define-runtime _%body130765%_))))
                      (_%E130744130753%_)))))
          (_%E130743130767%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx130711%_)
        (let* ((_%e130712130719%_ _%stx130711%_)
               (_%E130714130723%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130712130719%_)))
               (_%E130713130737%_
                (lambda ()
                  (if (gx#stx-pair? _%e130712130719%_)
                      (let ((_%e130715130727%_
                             (gx#syntax-e _%e130712130719%_)))
                        (let ((_%hd130716130730%_ (##car _%e130715130727%_))
                              (_%tl130717130732%_ (##cdr _%e130715130727%_)))
                          (let ((_%decls130735%_ _%tl130717130732%_))
                            (cons '%#declare _%decls130735%_))))
                      (_%E130714130723%_)))))
          (_%E130713130737%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx130681%_)
        (let* ((_%e130682130689%_ _%stx130681%_)
               (_%E130684130693%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130682130689%_)))
               (_%E130683130707%_
                (lambda ()
                  (if (gx#stx-pair? _%e130682130689%_)
                      (let ((_%e130685130697%_
                             (gx#syntax-e _%e130682130689%_)))
                        (let ((_%hd130686130700%_ (##car _%e130685130697%_))
                              (_%tl130687130702%_ (##cdr _%e130685130697%_)))
                          (let ((_%clause130705%_ _%tl130687130702%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause130705%_)))))
                      (_%E130684130693%_)))))
          (_%E130683130707%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx130638%_)
        (let* ((_%e130639130649%_ _%stx130638%_)
               (_%E130641130653%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130639130649%_)))
               (_%E130640130677%_
                (lambda ()
                  (if (gx#stx-pair? _%e130639130649%_)
                      (let ((_%e130642130657%_
                             (gx#syntax-e _%e130639130649%_)))
                        (let ((_%hd130643130660%_ (##car _%e130642130657%_))
                              (_%tl130644130662%_ (##cdr _%e130642130657%_)))
                          (let ((_%hd130665%_ _%hd130643130660%_))
                            (if (gx#stx-pair? _%tl130644130662%_)
                                (let ((_%e130645130667%_
                                       (gx#syntax-e _%tl130644130662%_)))
                                  (let ((_%hd130646130670%_
                                         (##car _%e130645130667%_))
                                        (_%tl130647130672%_
                                         (##cdr _%e130645130667%_)))
                                    (let ((_%body130675%_ _%hd130646130670%_))
                                      (if (gx#stx-null? _%tl130647130672%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd130665%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body130675%_)
                                                      '()))
                                          (_%E130641130653%_)))))
                                (_%E130641130653%_)))))
                      (_%E130641130653%_)))))
          (_%E130640130677%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx130608%_)
        (let* ((_%e130609130616%_ _%stx130608%_)
               (_%E130611130620%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130609130616%_)))
               (_%E130610130634%_
                (lambda ()
                  (if (gx#stx-pair? _%e130609130616%_)
                      (let ((_%e130612130624%_
                             (gx#syntax-e _%e130609130616%_)))
                        (let ((_%hd130613130627%_ (##car _%e130612130624%_))
                              (_%tl130614130629%_ (##cdr _%e130612130624%_)))
                          (let ((_%clauses130632%_ _%tl130614130629%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses130632%_)))))
                      (_%E130611130620%_)))))
          (_%E130610130634%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx130543%_ _%form130544%_)
        (let* ((_%e130545130558%_ _%stx130543%_)
               (_%E130547130562%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130545130558%_)))
               (_%E130546130594%_
                (lambda ()
                  (if (gx#stx-pair? _%e130545130558%_)
                      (let ((_%e130548130566%_
                             (gx#syntax-e _%e130545130558%_)))
                        (let ((_%hd130549130569%_ (##car _%e130548130566%_))
                              (_%tl130550130571%_ (##cdr _%e130548130566%_)))
                          (if (gx#stx-pair? _%tl130550130571%_)
                              (let ((_%e130551130574%_
                                     (gx#syntax-e _%tl130550130571%_)))
                                (let ((_%hd130552130577%_
                                       (##car _%e130551130574%_))
                                      (_%tl130553130579%_
                                       (##cdr _%e130551130574%_)))
                                  (let ((_%hd130582%_ _%hd130552130577%_))
                                    (if (gx#stx-pair? _%tl130553130579%_)
                                        (let ((_%e130554130584%_
                                               (gx#syntax-e
                                                _%tl130553130579%_)))
                                          (let ((_%hd130555130587%_
                                                 (##car _%e130554130584%_))
                                                (_%tl130556130589%_
                                                 (##cdr _%e130554130584%_)))
                                            (let ((_%body130592%_
                                                   _%hd130555130587%_))
                                              (if (gx#stx-null?
                                                   _%tl130556130589%_)
                                                  (cons _%form130544%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd130582%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body130592%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130547130562%_)))))
                                        (_%E130547130562%_)))))
                              (_%E130547130562%_))))
                      (_%E130547130562%_)))))
          (_%E130546130594%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx130601%_)
        (let ((_%form130603%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx130601%_ _%form130603%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g131430_
        (let ((_g131429_ (##length _g131430_)))
          (cond ((##fx= _g131429_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g131430_))
                ((##fx= _g131429_ 2)
                 (apply gx#core-compile-top-let-values%__% _g131430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g131430_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx130540%_)
        (gx#core-compile-top-let-values%__% _%stx130540%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx130538%_)
        (gx#core-compile-top-let-values%__% _%stx130538%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx130497%_)
        (let* ((_%e130498130508%_ _%stx130497%_)
               (_%E130500130512%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130498130508%_)))
               (_%E130499130534%_
                (lambda ()
                  (if (gx#stx-pair? _%e130498130508%_)
                      (let ((_%e130501130516%_
                             (gx#syntax-e _%e130498130508%_)))
                        (let ((_%hd130502130519%_ (##car _%e130501130516%_))
                              (_%tl130503130521%_ (##cdr _%e130501130516%_)))
                          (if (gx#stx-pair? _%tl130503130521%_)
                              (let ((_%e130504130524%_
                                     (gx#syntax-e _%tl130503130521%_)))
                                (let ((_%hd130505130527%_
                                       (##car _%e130504130524%_))
                                      (_%tl130506130529%_
                                       (##cdr _%e130504130524%_)))
                                  (let ((_%e130532%_ _%hd130505130527%_))
                                    (if (gx#stx-null? _%tl130506130529%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e130532%_)
                                                    '()))
                                        (_%E130500130512%_)))))
                              (_%E130500130512%_))))
                      (_%E130500130512%_)))))
          (_%E130499130534%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx130456%_)
        (let* ((_%e130457130467%_ _%stx130456%_)
               (_%E130459130471%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130457130467%_)))
               (_%E130458130493%_
                (lambda ()
                  (if (gx#stx-pair? _%e130457130467%_)
                      (let ((_%e130460130475%_
                             (gx#syntax-e _%e130457130467%_)))
                        (let ((_%hd130461130478%_ (##car _%e130460130475%_))
                              (_%tl130462130480%_ (##cdr _%e130460130475%_)))
                          (if (gx#stx-pair? _%tl130462130480%_)
                              (let ((_%e130463130483%_
                                     (gx#syntax-e _%tl130462130480%_)))
                                (let ((_%hd130464130486%_
                                       (##car _%e130463130483%_))
                                      (_%tl130465130488%_
                                       (##cdr _%e130463130483%_)))
                                  (let ((_%e130491%_ _%hd130464130486%_))
                                    (if (gx#stx-null? _%tl130465130488%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e130491%_)
                                                    '()))
                                        (_%E130459130471%_)))))
                              (_%E130459130471%_))))
                      (_%E130459130471%_)))))
          (_%E130458130493%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx130413%_)
        (let* ((_%e130414130424%_ _%stx130413%_)
               (_%E130416130428%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130414130424%_)))
               (_%E130415130452%_
                (lambda ()
                  (if (gx#stx-pair? _%e130414130424%_)
                      (let ((_%e130417130432%_
                             (gx#syntax-e _%e130414130424%_)))
                        (let ((_%hd130418130435%_ (##car _%e130417130432%_))
                              (_%tl130419130437%_ (##cdr _%e130417130432%_)))
                          (if (gx#stx-pair? _%tl130419130437%_)
                              (let ((_%e130420130440%_
                                     (gx#syntax-e _%tl130419130437%_)))
                                (let ((_%hd130421130443%_
                                       (##car _%e130420130440%_))
                                      (_%tl130422130445%_
                                       (##cdr _%e130420130440%_)))
                                  (let* ((_%rator130448%_ _%hd130421130443%_)
                                         (_%args130450%_ _%tl130422130445%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator130448%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args130450%_))))))
                              (_%E130416130428%_))))
                      (_%E130416130428%_)))))
          (_%E130415130452%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx130346%_)
        (let* ((_%e130347130363%_ _%stx130346%_)
               (_%E130349130367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130347130363%_)))
               (_%E130348130409%_
                (lambda ()
                  (if (gx#stx-pair? _%e130347130363%_)
                      (let ((_%e130350130371%_
                             (gx#syntax-e _%e130347130363%_)))
                        (let ((_%hd130351130374%_ (##car _%e130350130371%_))
                              (_%tl130352130376%_ (##cdr _%e130350130371%_)))
                          (if (gx#stx-pair? _%tl130352130376%_)
                              (let ((_%e130353130379%_
                                     (gx#syntax-e _%tl130352130376%_)))
                                (let ((_%hd130354130382%_
                                       (##car _%e130353130379%_))
                                      (_%tl130355130384%_
                                       (##cdr _%e130353130379%_)))
                                  (let ((_%test130387%_ _%hd130354130382%_))
                                    (if (gx#stx-pair? _%tl130355130384%_)
                                        (let ((_%e130356130389%_
                                               (gx#syntax-e
                                                _%tl130355130384%_)))
                                          (let ((_%hd130357130392%_
                                                 (##car _%e130356130389%_))
                                                (_%tl130358130394%_
                                                 (##cdr _%e130356130389%_)))
                                            (let ((_%K130397%_
                                                   _%hd130357130392%_))
                                              (if (gx#stx-pair?
                                                   _%tl130358130394%_)
                                                  (let ((_%e130359130399%_
                                                         (gx#syntax-e
                                                          _%tl130358130394%_)))
                                                    (let ((_%hd130360130402%_
                                                           (##car _%e130359130399%_))
                                                          (_%tl130361130404%_
                                                           (##cdr _%e130359130399%_)))
                                                      (let ((_%E130407%_
                                                             _%hd130360130402%_))
                                                        (if (gx#stx-null?
                                                             _%tl130361130404%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test130387%_)
                                (cons (gx#core-compile-top-syntax _%K130397%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E130407%_)
                                            '()))))
                    (_%E130349130367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130349130367%_)))))
                                        (_%E130349130367%_)))))
                              (_%E130349130367%_))))
                      (_%E130349130367%_)))))
          (_%E130348130409%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx130305%_)
        (let* ((_%e130306130316%_ _%stx130305%_)
               (_%E130308130320%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130306130316%_)))
               (_%E130307130342%_
                (lambda ()
                  (if (gx#stx-pair? _%e130306130316%_)
                      (let ((_%e130309130324%_
                             (gx#syntax-e _%e130306130316%_)))
                        (let ((_%hd130310130327%_ (##car _%e130309130324%_))
                              (_%tl130311130329%_ (##cdr _%e130309130324%_)))
                          (if (gx#stx-pair? _%tl130311130329%_)
                              (let ((_%e130312130332%_
                                     (gx#syntax-e _%tl130311130329%_)))
                                (let ((_%hd130313130335%_
                                       (##car _%e130312130332%_))
                                      (_%tl130314130337%_
                                       (##cdr _%e130312130332%_)))
                                  (let ((_%id130340%_ _%hd130313130335%_))
                                    (if (gx#stx-null? _%tl130314130337%_)
                                        (if (gx#identifier? _%id130340%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id130340%_)
                                                        '()))
                                            (_%E130308130320%_))
                                        (_%E130308130320%_)))))
                              (_%E130308130320%_))))
                      (_%E130308130320%_)))))
          (_%E130307130342%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx130251%_)
        (let* ((_%e130252130265%_ _%stx130251%_)
               (_%E130254130269%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130252130265%_)))
               (_%E130253130301%_
                (lambda ()
                  (if (gx#stx-pair? _%e130252130265%_)
                      (let ((_%e130255130273%_
                             (gx#syntax-e _%e130252130265%_)))
                        (let ((_%hd130256130276%_ (##car _%e130255130273%_))
                              (_%tl130257130278%_ (##cdr _%e130255130273%_)))
                          (if (gx#stx-pair? _%tl130257130278%_)
                              (let ((_%e130258130281%_
                                     (gx#syntax-e _%tl130257130278%_)))
                                (let ((_%hd130259130284%_
                                       (##car _%e130258130281%_))
                                      (_%tl130260130286%_
                                       (##cdr _%e130258130281%_)))
                                  (let ((_%id130289%_ _%hd130259130284%_))
                                    (if (gx#stx-pair? _%tl130260130286%_)
                                        (let ((_%e130261130291%_
                                               (gx#syntax-e
                                                _%tl130260130286%_)))
                                          (let ((_%hd130262130294%_
                                                 (##car _%e130261130291%_))
                                                (_%tl130263130296%_
                                                 (##cdr _%e130261130291%_)))
                                            (let ((_%expr130299%_
                                                   _%hd130262130294%_))
                                              (if (gx#stx-null?
                                                   _%tl130263130296%_)
                                                  (if (gx#identifier?
                                                       _%id130289%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id130289%_)
                          (cons (gx#core-compile-top-syntax _%expr130299%_)
                                '())))
              (_%E130254130269%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130254130269%_)))))
                                        (_%E130254130269%_)))))
                              (_%E130254130269%_))))
                      (_%E130254130269%_)))))
          (_%E130253130301%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id130245%_)
        (let ((_%$e130247%_ (gx#resolve-identifier__0 _%id130245%_)))
          (if _%$e130247%_
              (##unchecked-structure-ref _%$e130247%_ '1 '#f '#f)
              _%id130245%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd130243%_)
        (if (gx#identifier? _%hd130243%_)
            (gx#core-compile-top-runtime-ref _%hd130243%_)
            '#f)))))
