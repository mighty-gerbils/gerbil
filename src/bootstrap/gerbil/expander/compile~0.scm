(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1771036676)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx369657%_)
        (let* ((_%e369658369665%_ _%stx369657%_)
               (_%E369660369669%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369658369665%_)))
               (_%E369659369683%_
                (lambda ()
                  (if (gx#stx-pair? _%e369658369665%_)
                      (let ((_%e369661369673%_
                             (gx#syntax-e _%e369658369665%_)))
                        (let ((_%hd369662369676%_ (##car _%e369661369673%_))
                              (_%tl369663369678%_ (##cdr _%e369661369673%_)))
                          (let* ((_%form369681%_ _%hd369662369676%_)
                                 (__self369686
                                  (gx#syntax-local-e__0 _%form369681%_))
                                 (__method369687
                                  (__method-ref
                                   __self369686
                                   'compile-top-syntax)))
                            (if __method369687
                                (__method369687 __self369686 _%stx369657%_)
                                (begin
                                  (error '"Missing method"
                                         __self369686
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E369660369669%_)))))
          (_%E369659369683%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self369606%_ _%stx369607%_)
        (let* ((_%self369610%_ _%self369606%_)
               (_%self369619369627%_ _%self369610%_)
               (_%E369621369630%_
                (lambda ()
                  (error '"No clause matching"
                         _%self369619369627%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K369622369643%_
                (lambda (_%K369633%_)
                  (let ((_%$e369635%_ (gx#stx-source _%stx369607%_)))
                    (if _%$e369635%_
                        ((lambda (_%g369637369639%_)
                           (gx#stx-wrap-source
                            (_%K369633%_ _%stx369607%_)
                            _%g369637369639%_))
                         _%$e369635%_)
                        (_%K369633%_ _%stx369607%_)))))
               (_%e369623369646%_
                (##unchecked-structure-ref _%self369619369627%_ '1 '#f '#f))
               (_%e369624369649%_
                (##unchecked-structure-ref _%self369619369627%_ '2 '#f '#f))
               (_%e369625369652%_
                (##unchecked-structure-ref _%self369619369627%_ '3 '#f '#f))
               (_%K369655%_ _%e369625369652%_))
          (_%K369622369643%_ _%K369655%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx369480%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx369480%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx369450%_)
        (let* ((_%e369451369458%_ _%stx369450%_)
               (_%E369453369462%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369451369458%_)))
               (_%E369452369476%_
                (lambda ()
                  (if (gx#stx-pair? _%e369451369458%_)
                      (let ((_%e369454369466%_
                             (gx#syntax-e _%e369451369458%_)))
                        (let ((_%hd369455369469%_ (##car _%e369454369466%_))
                              (_%tl369456369471%_ (##cdr _%e369454369466%_)))
                          (let ((_%body369474%_ _%tl369456369471%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body369474%_)))))
                      (_%E369453369462%_)))))
          (_%E369452369476%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx369419%_)
        (let* ((_%e369420369427%_ _%stx369419%_)
               (_%E369422369431%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369420369427%_)))
               (_%E369421369446%_
                (lambda ()
                  (if (gx#stx-pair? _%e369420369427%_)
                      (let ((_%e369423369435%_
                             (gx#syntax-e _%e369420369427%_)))
                        (let ((_%hd369424369438%_ (##car _%e369423369435%_))
                              (_%tl369425369440%_ (##cdr _%e369423369435%_)))
                          (let ((_%body369443%_ _%tl369425369440%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body369443%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E369422369431%_)))))
          (_%E369421369446%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx369389%_)
        (let* ((_%e369390369397%_ _%stx369389%_)
               (_%E369392369401%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369390369397%_)))
               (_%E369391369415%_
                (lambda ()
                  (if (gx#stx-pair? _%e369390369397%_)
                      (let ((_%e369393369405%_
                             (gx#syntax-e _%e369390369397%_)))
                        (let ((_%hd369394369408%_ (##car _%e369393369405%_))
                              (_%tl369395369410%_ (##cdr _%e369393369405%_)))
                          (let ((_%body369413%_ _%tl369395369410%_))
                            (cons '%#begin-foreign _%body369413%_))))
                      (_%E369392369401%_)))))
          (_%E369391369415%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx369335%_)
        (let* ((_%e369336369349%_ _%stx369335%_)
               (_%E369338369353%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369336369349%_)))
               (_%E369337369385%_
                (lambda ()
                  (if (gx#stx-pair? _%e369336369349%_)
                      (let ((_%e369339369357%_
                             (gx#syntax-e _%e369336369349%_)))
                        (let ((_%hd369340369360%_ (##car _%e369339369357%_))
                              (_%tl369341369362%_ (##cdr _%e369339369357%_)))
                          (if (gx#stx-pair? _%tl369341369362%_)
                              (let ((_%e369342369365%_
                                     (gx#syntax-e _%tl369341369362%_)))
                                (let ((_%hd369343369368%_
                                       (##car _%e369342369365%_))
                                      (_%tl369344369370%_
                                       (##cdr _%e369342369365%_)))
                                  (let ((_%ann369373%_ _%hd369343369368%_))
                                    (if (gx#stx-pair? _%tl369344369370%_)
                                        (let ((_%e369345369375%_
                                               (gx#syntax-e
                                                _%tl369344369370%_)))
                                          (let ((_%hd369346369378%_
                                                 (##car _%e369345369375%_))
                                                (_%tl369347369380%_
                                                 (##cdr _%e369345369375%_)))
                                            (let ((_%expr369383%_
                                                   _%hd369346369378%_))
                                              (if (gx#stx-null?
                                                   _%tl369347369380%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr369383%_)
                                                  (_%E369338369353%_)))))
                                        (_%E369338369353%_)))))
                              (_%E369338369353%_))))
                      (_%E369338369353%_)))))
          (_%E369337369385%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx369305%_)
        (let* ((_%e369306369313%_ _%stx369305%_)
               (_%E369308369317%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369306369313%_)))
               (_%E369307369331%_
                (lambda ()
                  (if (gx#stx-pair? _%e369306369313%_)
                      (let ((_%e369309369321%_
                             (gx#syntax-e _%e369306369313%_)))
                        (let ((_%hd369310369324%_ (##car _%e369309369321%_))
                              (_%tl369311369326%_ (##cdr _%e369309369321%_)))
                          (let ((_%body369329%_ _%tl369311369326%_))
                            (cons '%#import _%body369329%_))))
                      (_%E369308369317%_)))))
          (_%E369307369331%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx369262%_)
        (let* ((_%e369263369273%_ _%stx369262%_)
               (_%E369265369277%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369263369273%_)))
               (_%E369264369301%_
                (lambda ()
                  (if (gx#stx-pair? _%e369263369273%_)
                      (let ((_%e369266369281%_
                             (gx#syntax-e _%e369263369273%_)))
                        (let ((_%hd369267369284%_ (##car _%e369266369281%_))
                              (_%tl369268369286%_ (##cdr _%e369266369281%_)))
                          (if (gx#stx-pair? _%tl369268369286%_)
                              (let ((_%e369269369289%_
                                     (gx#syntax-e _%tl369268369286%_)))
                                (let ((_%hd369270369292%_
                                       (##car _%e369269369289%_))
                                      (_%tl369271369294%_
                                       (##cdr _%e369269369289%_)))
                                  (let* ((_%hd369297%_ _%hd369270369292%_)
                                         (_%body369299%_ _%tl369271369294%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd369297%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body369299%_))))))
                              (_%E369265369277%_))))
                      (_%E369265369277%_)))))
          (_%E369264369301%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx369232%_)
        (let* ((_%e369233369240%_ _%stx369232%_)
               (_%E369235369244%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369233369240%_)))
               (_%E369234369258%_
                (lambda ()
                  (if (gx#stx-pair? _%e369233369240%_)
                      (let ((_%e369236369248%_
                             (gx#syntax-e _%e369233369240%_)))
                        (let ((_%hd369237369251%_ (##car _%e369236369248%_))
                              (_%tl369238369253%_ (##cdr _%e369236369248%_)))
                          (let ((_%body369256%_ _%tl369238369253%_))
                            (cons '%#export _%body369256%_))))
                      (_%E369235369244%_)))))
          (_%E369234369258%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx369202%_)
        (let* ((_%e369203369210%_ _%stx369202%_)
               (_%E369205369214%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369203369210%_)))
               (_%E369204369228%_
                (lambda ()
                  (if (gx#stx-pair? _%e369203369210%_)
                      (let ((_%e369206369218%_
                             (gx#syntax-e _%e369203369210%_)))
                        (let ((_%hd369207369221%_ (##car _%e369206369218%_))
                              (_%tl369208369223%_ (##cdr _%e369206369218%_)))
                          (let ((_%body369226%_ _%tl369208369223%_))
                            (cons '%#provide _%body369226%_))))
                      (_%E369205369214%_)))))
          (_%E369204369228%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx369172%_)
        (let* ((_%e369173369180%_ _%stx369172%_)
               (_%E369175369184%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369173369180%_)))
               (_%E369174369198%_
                (lambda ()
                  (if (gx#stx-pair? _%e369173369180%_)
                      (let ((_%e369176369188%_
                             (gx#syntax-e _%e369173369180%_)))
                        (let ((_%hd369177369191%_ (##car _%e369176369188%_))
                              (_%tl369178369193%_ (##cdr _%e369176369188%_)))
                          (let ((_%body369196%_ _%tl369178369193%_))
                            (cons '%#extern _%body369196%_))))
                      (_%E369175369184%_)))))
          (_%E369174369198%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx369118%_)
        (let* ((_%e369119369132%_ _%stx369118%_)
               (_%E369121369136%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369119369132%_)))
               (_%E369120369168%_
                (lambda ()
                  (if (gx#stx-pair? _%e369119369132%_)
                      (let ((_%e369122369140%_
                             (gx#syntax-e _%e369119369132%_)))
                        (let ((_%hd369123369143%_ (##car _%e369122369140%_))
                              (_%tl369124369145%_ (##cdr _%e369122369140%_)))
                          (if (gx#stx-pair? _%tl369124369145%_)
                              (let ((_%e369125369148%_
                                     (gx#syntax-e _%tl369124369145%_)))
                                (let ((_%hd369126369151%_
                                       (##car _%e369125369148%_))
                                      (_%tl369127369153%_
                                       (##cdr _%e369125369148%_)))
                                  (let ((_%hd369156%_ _%hd369126369151%_))
                                    (if (gx#stx-pair? _%tl369127369153%_)
                                        (let ((_%e369128369158%_
                                               (gx#syntax-e
                                                _%tl369127369153%_)))
                                          (let ((_%hd369129369161%_
                                                 (##car _%e369128369158%_))
                                                (_%tl369130369163%_
                                                 (##cdr _%e369128369158%_)))
                                            (let ((_%expr369166%_
                                                   _%hd369129369161%_))
                                              (if (gx#stx-null?
                                                   _%tl369130369163%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd369156%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr369166%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E369121369136%_)))))
                                        (_%E369121369136%_)))))
                              (_%E369121369136%_))))
                      (_%E369121369136%_)))))
          (_%E369120369168%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx369063%_)
        (let* ((_%e369064369077%_ _%stx369063%_)
               (_%E369066369081%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369064369077%_)))
               (_%E369065369114%_
                (lambda ()
                  (if (gx#stx-pair? _%e369064369077%_)
                      (let ((_%e369067369085%_
                             (gx#syntax-e _%e369064369077%_)))
                        (let ((_%hd369068369088%_ (##car _%e369067369085%_))
                              (_%tl369069369090%_ (##cdr _%e369067369085%_)))
                          (if (gx#stx-pair? _%tl369069369090%_)
                              (let ((_%e369070369093%_
                                     (gx#syntax-e _%tl369069369090%_)))
                                (let ((_%hd369071369096%_
                                       (##car _%e369070369093%_))
                                      (_%tl369072369098%_
                                       (##cdr _%e369070369093%_)))
                                  (let ((_%hd369101%_ _%hd369071369096%_))
                                    (if (gx#stx-pair? _%tl369072369098%_)
                                        (let ((_%e369073369103%_
                                               (gx#syntax-e
                                                _%tl369072369098%_)))
                                          (let ((_%hd369074369106%_
                                                 (##car _%e369073369103%_))
                                                (_%tl369075369108%_
                                                 (##cdr _%e369073369103%_)))
                                            (let ((_%expr369111%_
                                                   _%hd369074369106%_))
                                              (if (gx#stx-null?
                                                   _%tl369075369108%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd369101%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr369111%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E369066369081%_)))))
                                        (_%E369066369081%_)))))
                              (_%E369066369081%_))))
                      (_%E369066369081%_)))))
          (_%E369065369114%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx369033%_)
        (let* ((_%e369034369041%_ _%stx369033%_)
               (_%E369036369045%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369034369041%_)))
               (_%E369035369059%_
                (lambda ()
                  (if (gx#stx-pair? _%e369034369041%_)
                      (let ((_%e369037369049%_
                             (gx#syntax-e _%e369034369041%_)))
                        (let ((_%hd369038369052%_ (##car _%e369037369049%_))
                              (_%tl369039369054%_ (##cdr _%e369037369049%_)))
                          (let ((_%body369057%_ _%tl369039369054%_))
                            (cons '%#define-alias _%body369057%_))))
                      (_%E369036369045%_)))))
          (_%E369035369059%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx369003%_)
        (let* ((_%e369004369011%_ _%stx369003%_)
               (_%E369006369015%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e369004369011%_)))
               (_%E369005369029%_
                (lambda ()
                  (if (gx#stx-pair? _%e369004369011%_)
                      (let ((_%e369007369019%_
                             (gx#syntax-e _%e369004369011%_)))
                        (let ((_%hd369008369022%_ (##car _%e369007369019%_))
                              (_%tl369009369024%_ (##cdr _%e369007369019%_)))
                          (let ((_%body369027%_ _%tl369009369024%_))
                            (cons '%#define-runtime _%body369027%_))))
                      (_%E369006369015%_)))))
          (_%E369005369029%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx368973%_)
        (let* ((_%e368974368981%_ _%stx368973%_)
               (_%E368976368985%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368974368981%_)))
               (_%E368975368999%_
                (lambda ()
                  (if (gx#stx-pair? _%e368974368981%_)
                      (let ((_%e368977368989%_
                             (gx#syntax-e _%e368974368981%_)))
                        (let ((_%hd368978368992%_ (##car _%e368977368989%_))
                              (_%tl368979368994%_ (##cdr _%e368977368989%_)))
                          (let ((_%decls368997%_ _%tl368979368994%_))
                            (cons '%#declare _%decls368997%_))))
                      (_%E368976368985%_)))))
          (_%E368975368999%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx368943%_)
        (let* ((_%e368944368951%_ _%stx368943%_)
               (_%E368946368955%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368944368951%_)))
               (_%E368945368969%_
                (lambda ()
                  (if (gx#stx-pair? _%e368944368951%_)
                      (let ((_%e368947368959%_
                             (gx#syntax-e _%e368944368951%_)))
                        (let ((_%hd368948368962%_ (##car _%e368947368959%_))
                              (_%tl368949368964%_ (##cdr _%e368947368959%_)))
                          (let ((_%clause368967%_ _%tl368949368964%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause368967%_)))))
                      (_%E368946368955%_)))))
          (_%E368945368969%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx368900%_)
        (let* ((_%e368901368911%_ _%stx368900%_)
               (_%E368903368915%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368901368911%_)))
               (_%E368902368939%_
                (lambda ()
                  (if (gx#stx-pair? _%e368901368911%_)
                      (let ((_%e368904368919%_
                             (gx#syntax-e _%e368901368911%_)))
                        (let ((_%hd368905368922%_ (##car _%e368904368919%_))
                              (_%tl368906368924%_ (##cdr _%e368904368919%_)))
                          (let ((_%hd368927%_ _%hd368905368922%_))
                            (if (gx#stx-pair? _%tl368906368924%_)
                                (let ((_%e368907368929%_
                                       (gx#syntax-e _%tl368906368924%_)))
                                  (let ((_%hd368908368932%_
                                         (##car _%e368907368929%_))
                                        (_%tl368909368934%_
                                         (##cdr _%e368907368929%_)))
                                    (let ((_%body368937%_ _%hd368908368932%_))
                                      (if (gx#stx-null? _%tl368909368934%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd368927%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body368937%_)
                                                      '()))
                                          (_%E368903368915%_)))))
                                (_%E368903368915%_)))))
                      (_%E368903368915%_)))))
          (_%E368902368939%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx368870%_)
        (let* ((_%e368871368878%_ _%stx368870%_)
               (_%E368873368882%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368871368878%_)))
               (_%E368872368896%_
                (lambda ()
                  (if (gx#stx-pair? _%e368871368878%_)
                      (let ((_%e368874368886%_
                             (gx#syntax-e _%e368871368878%_)))
                        (let ((_%hd368875368889%_ (##car _%e368874368886%_))
                              (_%tl368876368891%_ (##cdr _%e368874368886%_)))
                          (let ((_%clauses368894%_ _%tl368876368891%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses368894%_)))))
                      (_%E368873368882%_)))))
          (_%E368872368896%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx368805%_ _%form368806%_)
        (let* ((_%e368807368820%_ _%stx368805%_)
               (_%E368809368824%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368807368820%_)))
               (_%E368808368856%_
                (lambda ()
                  (if (gx#stx-pair? _%e368807368820%_)
                      (let ((_%e368810368828%_
                             (gx#syntax-e _%e368807368820%_)))
                        (let ((_%hd368811368831%_ (##car _%e368810368828%_))
                              (_%tl368812368833%_ (##cdr _%e368810368828%_)))
                          (if (gx#stx-pair? _%tl368812368833%_)
                              (let ((_%e368813368836%_
                                     (gx#syntax-e _%tl368812368833%_)))
                                (let ((_%hd368814368839%_
                                       (##car _%e368813368836%_))
                                      (_%tl368815368841%_
                                       (##cdr _%e368813368836%_)))
                                  (let ((_%hd368844%_ _%hd368814368839%_))
                                    (if (gx#stx-pair? _%tl368815368841%_)
                                        (let ((_%e368816368846%_
                                               (gx#syntax-e
                                                _%tl368815368841%_)))
                                          (let ((_%hd368817368849%_
                                                 (##car _%e368816368846%_))
                                                (_%tl368818368851%_
                                                 (##cdr _%e368816368846%_)))
                                            (let ((_%body368854%_
                                                   _%hd368817368849%_))
                                              (if (gx#stx-null?
                                                   _%tl368818368851%_)
                                                  (cons _%form368806%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd368844%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body368854%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E368809368824%_)))))
                                        (_%E368809368824%_)))))
                              (_%E368809368824%_))))
                      (_%E368809368824%_)))))
          (_%E368808368856%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx368863%_)
        (let ((_%form368865%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx368863%_ _%form368865%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g369688_
        (let ((_g369689_ (##length _g369688_)))
          (cond ((##fx= _g369689_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g369688_))
                ((##fx= _g369689_ 2)
                 (apply gx#core-compile-top-let-values%__% _g369688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g369688_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx368802%_)
        (gx#core-compile-top-let-values%__% _%stx368802%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx368800%_)
        (gx#core-compile-top-let-values%__% _%stx368800%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx368759%_)
        (let* ((_%e368760368770%_ _%stx368759%_)
               (_%E368762368774%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368760368770%_)))
               (_%E368761368796%_
                (lambda ()
                  (if (gx#stx-pair? _%e368760368770%_)
                      (let ((_%e368763368778%_
                             (gx#syntax-e _%e368760368770%_)))
                        (let ((_%hd368764368781%_ (##car _%e368763368778%_))
                              (_%tl368765368783%_ (##cdr _%e368763368778%_)))
                          (if (gx#stx-pair? _%tl368765368783%_)
                              (let ((_%e368766368786%_
                                     (gx#syntax-e _%tl368765368783%_)))
                                (let ((_%hd368767368789%_
                                       (##car _%e368766368786%_))
                                      (_%tl368768368791%_
                                       (##cdr _%e368766368786%_)))
                                  (let ((_%e368794%_ _%hd368767368789%_))
                                    (if (gx#stx-null? _%tl368768368791%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e368794%_)
                                                    '()))
                                        (_%E368762368774%_)))))
                              (_%E368762368774%_))))
                      (_%E368762368774%_)))))
          (_%E368761368796%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx368718%_)
        (let* ((_%e368719368729%_ _%stx368718%_)
               (_%E368721368733%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368719368729%_)))
               (_%E368720368755%_
                (lambda ()
                  (if (gx#stx-pair? _%e368719368729%_)
                      (let ((_%e368722368737%_
                             (gx#syntax-e _%e368719368729%_)))
                        (let ((_%hd368723368740%_ (##car _%e368722368737%_))
                              (_%tl368724368742%_ (##cdr _%e368722368737%_)))
                          (if (gx#stx-pair? _%tl368724368742%_)
                              (let ((_%e368725368745%_
                                     (gx#syntax-e _%tl368724368742%_)))
                                (let ((_%hd368726368748%_
                                       (##car _%e368725368745%_))
                                      (_%tl368727368750%_
                                       (##cdr _%e368725368745%_)))
                                  (let ((_%e368753%_ _%hd368726368748%_))
                                    (if (gx#stx-null? _%tl368727368750%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e368753%_)
                                                    '()))
                                        (_%E368721368733%_)))))
                              (_%E368721368733%_))))
                      (_%E368721368733%_)))))
          (_%E368720368755%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx368675%_)
        (let* ((_%e368676368686%_ _%stx368675%_)
               (_%E368678368690%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368676368686%_)))
               (_%E368677368714%_
                (lambda ()
                  (if (gx#stx-pair? _%e368676368686%_)
                      (let ((_%e368679368694%_
                             (gx#syntax-e _%e368676368686%_)))
                        (let ((_%hd368680368697%_ (##car _%e368679368694%_))
                              (_%tl368681368699%_ (##cdr _%e368679368694%_)))
                          (if (gx#stx-pair? _%tl368681368699%_)
                              (let ((_%e368682368702%_
                                     (gx#syntax-e _%tl368681368699%_)))
                                (let ((_%hd368683368705%_
                                       (##car _%e368682368702%_))
                                      (_%tl368684368707%_
                                       (##cdr _%e368682368702%_)))
                                  (let* ((_%rator368710%_ _%hd368683368705%_)
                                         (_%args368712%_ _%tl368684368707%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator368710%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args368712%_))))))
                              (_%E368678368690%_))))
                      (_%E368678368690%_)))))
          (_%E368677368714%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx368608%_)
        (let* ((_%e368609368625%_ _%stx368608%_)
               (_%E368611368629%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368609368625%_)))
               (_%E368610368671%_
                (lambda ()
                  (if (gx#stx-pair? _%e368609368625%_)
                      (let ((_%e368612368633%_
                             (gx#syntax-e _%e368609368625%_)))
                        (let ((_%hd368613368636%_ (##car _%e368612368633%_))
                              (_%tl368614368638%_ (##cdr _%e368612368633%_)))
                          (if (gx#stx-pair? _%tl368614368638%_)
                              (let ((_%e368615368641%_
                                     (gx#syntax-e _%tl368614368638%_)))
                                (let ((_%hd368616368644%_
                                       (##car _%e368615368641%_))
                                      (_%tl368617368646%_
                                       (##cdr _%e368615368641%_)))
                                  (let ((_%test368649%_ _%hd368616368644%_))
                                    (if (gx#stx-pair? _%tl368617368646%_)
                                        (let ((_%e368618368651%_
                                               (gx#syntax-e
                                                _%tl368617368646%_)))
                                          (let ((_%hd368619368654%_
                                                 (##car _%e368618368651%_))
                                                (_%tl368620368656%_
                                                 (##cdr _%e368618368651%_)))
                                            (let ((_%K368659%_
                                                   _%hd368619368654%_))
                                              (if (gx#stx-pair?
                                                   _%tl368620368656%_)
                                                  (let ((_%e368621368661%_
                                                         (gx#syntax-e
                                                          _%tl368620368656%_)))
                                                    (let ((_%hd368622368664%_
                                                           (##car _%e368621368661%_))
                                                          (_%tl368623368666%_
                                                           (##cdr _%e368621368661%_)))
                                                      (let ((_%E368669%_
                                                             _%hd368622368664%_))
                                                        (if (gx#stx-null?
                                                             _%tl368623368666%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test368649%_)
                                (cons (gx#core-compile-top-syntax _%K368659%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E368669%_)
                                            '()))))
                    (_%E368611368629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E368611368629%_)))))
                                        (_%E368611368629%_)))))
                              (_%E368611368629%_))))
                      (_%E368611368629%_)))))
          (_%E368610368671%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx368567%_)
        (let* ((_%e368568368578%_ _%stx368567%_)
               (_%E368570368582%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368568368578%_)))
               (_%E368569368604%_
                (lambda ()
                  (if (gx#stx-pair? _%e368568368578%_)
                      (let ((_%e368571368586%_
                             (gx#syntax-e _%e368568368578%_)))
                        (let ((_%hd368572368589%_ (##car _%e368571368586%_))
                              (_%tl368573368591%_ (##cdr _%e368571368586%_)))
                          (if (gx#stx-pair? _%tl368573368591%_)
                              (let ((_%e368574368594%_
                                     (gx#syntax-e _%tl368573368591%_)))
                                (let ((_%hd368575368597%_
                                       (##car _%e368574368594%_))
                                      (_%tl368576368599%_
                                       (##cdr _%e368574368594%_)))
                                  (let ((_%id368602%_ _%hd368575368597%_))
                                    (if (gx#stx-null? _%tl368576368599%_)
                                        (if (gx#identifier? _%id368602%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id368602%_)
                                                        '()))
                                            (_%E368570368582%_))
                                        (_%E368570368582%_)))))
                              (_%E368570368582%_))))
                      (_%E368570368582%_)))))
          (_%E368569368604%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx368513%_)
        (let* ((_%e368514368527%_ _%stx368513%_)
               (_%E368516368531%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e368514368527%_)))
               (_%E368515368563%_
                (lambda ()
                  (if (gx#stx-pair? _%e368514368527%_)
                      (let ((_%e368517368535%_
                             (gx#syntax-e _%e368514368527%_)))
                        (let ((_%hd368518368538%_ (##car _%e368517368535%_))
                              (_%tl368519368540%_ (##cdr _%e368517368535%_)))
                          (if (gx#stx-pair? _%tl368519368540%_)
                              (let ((_%e368520368543%_
                                     (gx#syntax-e _%tl368519368540%_)))
                                (let ((_%hd368521368546%_
                                       (##car _%e368520368543%_))
                                      (_%tl368522368548%_
                                       (##cdr _%e368520368543%_)))
                                  (let ((_%id368551%_ _%hd368521368546%_))
                                    (if (gx#stx-pair? _%tl368522368548%_)
                                        (let ((_%e368523368553%_
                                               (gx#syntax-e
                                                _%tl368522368548%_)))
                                          (let ((_%hd368524368556%_
                                                 (##car _%e368523368553%_))
                                                (_%tl368525368558%_
                                                 (##cdr _%e368523368553%_)))
                                            (let ((_%expr368561%_
                                                   _%hd368524368556%_))
                                              (if (gx#stx-null?
                                                   _%tl368525368558%_)
                                                  (if (gx#identifier?
                                                       _%id368551%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id368551%_)
                          (cons (gx#core-compile-top-syntax _%expr368561%_)
                                '())))
              (_%E368516368531%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E368516368531%_)))))
                                        (_%E368516368531%_)))))
                              (_%E368516368531%_))))
                      (_%E368516368531%_)))))
          (_%E368515368563%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id368507%_)
        (let ((_%$e368509%_ (gx#resolve-identifier__0 _%id368507%_)))
          (if _%$e368509%_
              (##unchecked-structure-ref _%$e368509%_ '1 '#f '#f)
              _%id368507%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd368505%_)
        (if (gx#identifier? _%hd368505%_)
            (gx#core-compile-top-runtime-ref _%hd368505%_)
            '#f)))))
