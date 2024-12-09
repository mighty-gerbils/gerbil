(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1733687560)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx130334%_)
        (let* ((_%e130335130342%_ _%stx130334%_)
               (_%E130337130346%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130335130342%_)))
               (_%E130336130360%_
                (lambda ()
                  (if (gx#stx-pair? _%e130335130342%_)
                      (let ((_%e130338130350%_
                             (gx#syntax-e _%e130335130342%_)))
                        (let ((_%hd130339130353%_ (##car _%e130338130350%_))
                              (_%tl130340130355%_ (##cdr _%e130338130350%_)))
                          (let* ((_%form130358%_ _%hd130339130353%_)
                                 (__self130363
                                  (gx#syntax-local-e__0 _%form130358%_))
                                 (__method130364
                                  (__method-ref
                                   __self130363
                                   'compile-top-syntax)))
                            (if __method130364
                                (__method130364 __self130363 _%stx130334%_)
                                (begin
                                  (error '"Missing method"
                                         __self130363
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E130337130346%_)))))
          (_%E130336130360%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self129177130280%_ _%stx130282%_)
        (let* ((_%self130284%_ _%self129177130280%_)
               (_%self130286%_ _%self130284%_)
               (_%self130295130303%_ _%self130286%_)
               (_%E130297130307%_
                (lambda ()
                  (error '"No clause matching"
                         _%self130295130303%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K130298130320%_
                (lambda (_%K130310%_)
                  (let ((_%$e130312%_ (gx#stx-source _%stx130282%_)))
                    (if _%$e130312%_
                        ((lambda (_%g130314130316%_)
                           (gx#stx-wrap-source
                            (_%K130310%_ _%stx130282%_)
                            _%g130314130316%_))
                         _%$e130312%_)
                        (_%K130310%_ _%stx130282%_)))))
               (_%e130299130323%_
                (##unchecked-structure-ref _%self130295130303%_ '1 '#f '#f))
               (_%e130300130326%_
                (##unchecked-structure-ref _%self130295130303%_ '2 '#f '#f))
               (_%e130301130329%_
                (##unchecked-structure-ref _%self130295130303%_ '3 '#f '#f))
               (_%K130332%_ _%e130301130329%_))
          (_%K130298130320%_ _%K130332%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx130154%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx130154%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx130124%_)
        (let* ((_%e130125130132%_ _%stx130124%_)
               (_%E130127130136%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130125130132%_)))
               (_%E130126130150%_
                (lambda ()
                  (if (gx#stx-pair? _%e130125130132%_)
                      (let ((_%e130128130140%_
                             (gx#syntax-e _%e130125130132%_)))
                        (let ((_%hd130129130143%_ (##car _%e130128130140%_))
                              (_%tl130130130145%_ (##cdr _%e130128130140%_)))
                          (let ((_%body130148%_ _%tl130130130145%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body130148%_)))))
                      (_%E130127130136%_)))))
          (_%E130126130150%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx130093%_)
        (let* ((_%e130094130101%_ _%stx130093%_)
               (_%E130096130105%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130094130101%_)))
               (_%E130095130120%_
                (lambda ()
                  (if (gx#stx-pair? _%e130094130101%_)
                      (let ((_%e130097130109%_
                             (gx#syntax-e _%e130094130101%_)))
                        (let ((_%hd130098130112%_ (##car _%e130097130109%_))
                              (_%tl130099130114%_ (##cdr _%e130097130109%_)))
                          (let ((_%body130117%_ _%tl130099130114%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body130117%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E130096130105%_)))))
          (_%E130095130120%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx130063%_)
        (let* ((_%e130064130071%_ _%stx130063%_)
               (_%E130066130075%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130064130071%_)))
               (_%E130065130089%_
                (lambda ()
                  (if (gx#stx-pair? _%e130064130071%_)
                      (let ((_%e130067130079%_
                             (gx#syntax-e _%e130064130071%_)))
                        (let ((_%hd130068130082%_ (##car _%e130067130079%_))
                              (_%tl130069130084%_ (##cdr _%e130067130079%_)))
                          (let ((_%body130087%_ _%tl130069130084%_))
                            (cons '%#begin-foreign _%body130087%_))))
                      (_%E130066130075%_)))))
          (_%E130065130089%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx130009%_)
        (let* ((_%e130010130023%_ _%stx130009%_)
               (_%E130012130027%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130010130023%_)))
               (_%E130011130059%_
                (lambda ()
                  (if (gx#stx-pair? _%e130010130023%_)
                      (let ((_%e130013130031%_
                             (gx#syntax-e _%e130010130023%_)))
                        (let ((_%hd130014130034%_ (##car _%e130013130031%_))
                              (_%tl130015130036%_ (##cdr _%e130013130031%_)))
                          (if (gx#stx-pair? _%tl130015130036%_)
                              (let ((_%e130016130039%_
                                     (gx#syntax-e _%tl130015130036%_)))
                                (let ((_%hd130017130042%_
                                       (##car _%e130016130039%_))
                                      (_%tl130018130044%_
                                       (##cdr _%e130016130039%_)))
                                  (let ((_%ann130047%_ _%hd130017130042%_))
                                    (if (gx#stx-pair? _%tl130018130044%_)
                                        (let ((_%e130019130049%_
                                               (gx#syntax-e
                                                _%tl130018130044%_)))
                                          (let ((_%hd130020130052%_
                                                 (##car _%e130019130049%_))
                                                (_%tl130021130054%_
                                                 (##cdr _%e130019130049%_)))
                                            (let ((_%expr130057%_
                                                   _%hd130020130052%_))
                                              (if (gx#stx-null?
                                                   _%tl130021130054%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr130057%_)
                                                  (_%E130012130027%_)))))
                                        (_%E130012130027%_)))))
                              (_%E130012130027%_))))
                      (_%E130012130027%_)))))
          (_%E130011130059%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx129979%_)
        (let* ((_%e129980129987%_ _%stx129979%_)
               (_%E129982129991%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129980129987%_)))
               (_%E129981130005%_
                (lambda ()
                  (if (gx#stx-pair? _%e129980129987%_)
                      (let ((_%e129983129995%_
                             (gx#syntax-e _%e129980129987%_)))
                        (let ((_%hd129984129998%_ (##car _%e129983129995%_))
                              (_%tl129985130000%_ (##cdr _%e129983129995%_)))
                          (let ((_%body130003%_ _%tl129985130000%_))
                            (cons '%#import _%body130003%_))))
                      (_%E129982129991%_)))))
          (_%E129981130005%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx129936%_)
        (let* ((_%e129937129947%_ _%stx129936%_)
               (_%E129939129951%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129937129947%_)))
               (_%E129938129975%_
                (lambda ()
                  (if (gx#stx-pair? _%e129937129947%_)
                      (let ((_%e129940129955%_
                             (gx#syntax-e _%e129937129947%_)))
                        (let ((_%hd129941129958%_ (##car _%e129940129955%_))
                              (_%tl129942129960%_ (##cdr _%e129940129955%_)))
                          (if (gx#stx-pair? _%tl129942129960%_)
                              (let ((_%e129943129963%_
                                     (gx#syntax-e _%tl129942129960%_)))
                                (let ((_%hd129944129966%_
                                       (##car _%e129943129963%_))
                                      (_%tl129945129968%_
                                       (##cdr _%e129943129963%_)))
                                  (let* ((_%hd129971%_ _%hd129944129966%_)
                                         (_%body129973%_ _%tl129945129968%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd129971%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body129973%_))))))
                              (_%E129939129951%_))))
                      (_%E129939129951%_)))))
          (_%E129938129975%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx129906%_)
        (let* ((_%e129907129914%_ _%stx129906%_)
               (_%E129909129918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129907129914%_)))
               (_%E129908129932%_
                (lambda ()
                  (if (gx#stx-pair? _%e129907129914%_)
                      (let ((_%e129910129922%_
                             (gx#syntax-e _%e129907129914%_)))
                        (let ((_%hd129911129925%_ (##car _%e129910129922%_))
                              (_%tl129912129927%_ (##cdr _%e129910129922%_)))
                          (let ((_%body129930%_ _%tl129912129927%_))
                            (cons '%#export _%body129930%_))))
                      (_%E129909129918%_)))))
          (_%E129908129932%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx129876%_)
        (let* ((_%e129877129884%_ _%stx129876%_)
               (_%E129879129888%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129877129884%_)))
               (_%E129878129902%_
                (lambda ()
                  (if (gx#stx-pair? _%e129877129884%_)
                      (let ((_%e129880129892%_
                             (gx#syntax-e _%e129877129884%_)))
                        (let ((_%hd129881129895%_ (##car _%e129880129892%_))
                              (_%tl129882129897%_ (##cdr _%e129880129892%_)))
                          (let ((_%body129900%_ _%tl129882129897%_))
                            (cons '%#provide _%body129900%_))))
                      (_%E129879129888%_)))))
          (_%E129878129902%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx129846%_)
        (let* ((_%e129847129854%_ _%stx129846%_)
               (_%E129849129858%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129847129854%_)))
               (_%E129848129872%_
                (lambda ()
                  (if (gx#stx-pair? _%e129847129854%_)
                      (let ((_%e129850129862%_
                             (gx#syntax-e _%e129847129854%_)))
                        (let ((_%hd129851129865%_ (##car _%e129850129862%_))
                              (_%tl129852129867%_ (##cdr _%e129850129862%_)))
                          (let ((_%body129870%_ _%tl129852129867%_))
                            (cons '%#extern _%body129870%_))))
                      (_%E129849129858%_)))))
          (_%E129848129872%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx129792%_)
        (let* ((_%e129793129806%_ _%stx129792%_)
               (_%E129795129810%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129793129806%_)))
               (_%E129794129842%_
                (lambda ()
                  (if (gx#stx-pair? _%e129793129806%_)
                      (let ((_%e129796129814%_
                             (gx#syntax-e _%e129793129806%_)))
                        (let ((_%hd129797129817%_ (##car _%e129796129814%_))
                              (_%tl129798129819%_ (##cdr _%e129796129814%_)))
                          (if (gx#stx-pair? _%tl129798129819%_)
                              (let ((_%e129799129822%_
                                     (gx#syntax-e _%tl129798129819%_)))
                                (let ((_%hd129800129825%_
                                       (##car _%e129799129822%_))
                                      (_%tl129801129827%_
                                       (##cdr _%e129799129822%_)))
                                  (let ((_%hd129830%_ _%hd129800129825%_))
                                    (if (gx#stx-pair? _%tl129801129827%_)
                                        (let ((_%e129802129832%_
                                               (gx#syntax-e
                                                _%tl129801129827%_)))
                                          (let ((_%hd129803129835%_
                                                 (##car _%e129802129832%_))
                                                (_%tl129804129837%_
                                                 (##cdr _%e129802129832%_)))
                                            (let ((_%expr129840%_
                                                   _%hd129803129835%_))
                                              (if (gx#stx-null?
                                                   _%tl129804129837%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd129830%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr129840%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129795129810%_)))))
                                        (_%E129795129810%_)))))
                              (_%E129795129810%_))))
                      (_%E129795129810%_)))))
          (_%E129794129842%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx129737%_)
        (let* ((_%e129738129751%_ _%stx129737%_)
               (_%E129740129755%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129738129751%_)))
               (_%E129739129788%_
                (lambda ()
                  (if (gx#stx-pair? _%e129738129751%_)
                      (let ((_%e129741129759%_
                             (gx#syntax-e _%e129738129751%_)))
                        (let ((_%hd129742129762%_ (##car _%e129741129759%_))
                              (_%tl129743129764%_ (##cdr _%e129741129759%_)))
                          (if (gx#stx-pair? _%tl129743129764%_)
                              (let ((_%e129744129767%_
                                     (gx#syntax-e _%tl129743129764%_)))
                                (let ((_%hd129745129770%_
                                       (##car _%e129744129767%_))
                                      (_%tl129746129772%_
                                       (##cdr _%e129744129767%_)))
                                  (let ((_%hd129775%_ _%hd129745129770%_))
                                    (if (gx#stx-pair? _%tl129746129772%_)
                                        (let ((_%e129747129777%_
                                               (gx#syntax-e
                                                _%tl129746129772%_)))
                                          (let ((_%hd129748129780%_
                                                 (##car _%e129747129777%_))
                                                (_%tl129749129782%_
                                                 (##cdr _%e129747129777%_)))
                                            (let ((_%expr129785%_
                                                   _%hd129748129780%_))
                                              (if (gx#stx-null?
                                                   _%tl129749129782%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd129775%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr129785%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129740129755%_)))))
                                        (_%E129740129755%_)))))
                              (_%E129740129755%_))))
                      (_%E129740129755%_)))))
          (_%E129739129788%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx129707%_)
        (let* ((_%e129708129715%_ _%stx129707%_)
               (_%E129710129719%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129708129715%_)))
               (_%E129709129733%_
                (lambda ()
                  (if (gx#stx-pair? _%e129708129715%_)
                      (let ((_%e129711129723%_
                             (gx#syntax-e _%e129708129715%_)))
                        (let ((_%hd129712129726%_ (##car _%e129711129723%_))
                              (_%tl129713129728%_ (##cdr _%e129711129723%_)))
                          (let ((_%body129731%_ _%tl129713129728%_))
                            (cons '%#define-alias _%body129731%_))))
                      (_%E129710129719%_)))))
          (_%E129709129733%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx129677%_)
        (let* ((_%e129678129685%_ _%stx129677%_)
               (_%E129680129689%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129678129685%_)))
               (_%E129679129703%_
                (lambda ()
                  (if (gx#stx-pair? _%e129678129685%_)
                      (let ((_%e129681129693%_
                             (gx#syntax-e _%e129678129685%_)))
                        (let ((_%hd129682129696%_ (##car _%e129681129693%_))
                              (_%tl129683129698%_ (##cdr _%e129681129693%_)))
                          (let ((_%body129701%_ _%tl129683129698%_))
                            (cons '%#define-runtime _%body129701%_))))
                      (_%E129680129689%_)))))
          (_%E129679129703%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx129647%_)
        (let* ((_%e129648129655%_ _%stx129647%_)
               (_%E129650129659%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129648129655%_)))
               (_%E129649129673%_
                (lambda ()
                  (if (gx#stx-pair? _%e129648129655%_)
                      (let ((_%e129651129663%_
                             (gx#syntax-e _%e129648129655%_)))
                        (let ((_%hd129652129666%_ (##car _%e129651129663%_))
                              (_%tl129653129668%_ (##cdr _%e129651129663%_)))
                          (let ((_%decls129671%_ _%tl129653129668%_))
                            (cons '%#declare _%decls129671%_))))
                      (_%E129650129659%_)))))
          (_%E129649129673%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx129617%_)
        (let* ((_%e129618129625%_ _%stx129617%_)
               (_%E129620129629%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129618129625%_)))
               (_%E129619129643%_
                (lambda ()
                  (if (gx#stx-pair? _%e129618129625%_)
                      (let ((_%e129621129633%_
                             (gx#syntax-e _%e129618129625%_)))
                        (let ((_%hd129622129636%_ (##car _%e129621129633%_))
                              (_%tl129623129638%_ (##cdr _%e129621129633%_)))
                          (let ((_%clause129641%_ _%tl129623129638%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause129641%_)))))
                      (_%E129620129629%_)))))
          (_%E129619129643%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx129574%_)
        (let* ((_%e129575129585%_ _%stx129574%_)
               (_%E129577129589%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129575129585%_)))
               (_%E129576129613%_
                (lambda ()
                  (if (gx#stx-pair? _%e129575129585%_)
                      (let ((_%e129578129593%_
                             (gx#syntax-e _%e129575129585%_)))
                        (let ((_%hd129579129596%_ (##car _%e129578129593%_))
                              (_%tl129580129598%_ (##cdr _%e129578129593%_)))
                          (let ((_%hd129601%_ _%hd129579129596%_))
                            (if (gx#stx-pair? _%tl129580129598%_)
                                (let ((_%e129581129603%_
                                       (gx#syntax-e _%tl129580129598%_)))
                                  (let ((_%hd129582129606%_
                                         (##car _%e129581129603%_))
                                        (_%tl129583129608%_
                                         (##cdr _%e129581129603%_)))
                                    (let ((_%body129611%_ _%hd129582129606%_))
                                      (if (gx#stx-null? _%tl129583129608%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd129601%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body129611%_)
                                                      '()))
                                          (_%E129577129589%_)))))
                                (_%E129577129589%_)))))
                      (_%E129577129589%_)))))
          (_%E129576129613%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx129544%_)
        (let* ((_%e129545129552%_ _%stx129544%_)
               (_%E129547129556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129545129552%_)))
               (_%E129546129570%_
                (lambda ()
                  (if (gx#stx-pair? _%e129545129552%_)
                      (let ((_%e129548129560%_
                             (gx#syntax-e _%e129545129552%_)))
                        (let ((_%hd129549129563%_ (##car _%e129548129560%_))
                              (_%tl129550129565%_ (##cdr _%e129548129560%_)))
                          (let ((_%clauses129568%_ _%tl129550129565%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses129568%_)))))
                      (_%E129547129556%_)))))
          (_%E129546129570%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx129479%_ _%form129480%_)
        (let* ((_%e129481129494%_ _%stx129479%_)
               (_%E129483129498%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129481129494%_)))
               (_%E129482129530%_
                (lambda ()
                  (if (gx#stx-pair? _%e129481129494%_)
                      (let ((_%e129484129502%_
                             (gx#syntax-e _%e129481129494%_)))
                        (let ((_%hd129485129505%_ (##car _%e129484129502%_))
                              (_%tl129486129507%_ (##cdr _%e129484129502%_)))
                          (if (gx#stx-pair? _%tl129486129507%_)
                              (let ((_%e129487129510%_
                                     (gx#syntax-e _%tl129486129507%_)))
                                (let ((_%hd129488129513%_
                                       (##car _%e129487129510%_))
                                      (_%tl129489129515%_
                                       (##cdr _%e129487129510%_)))
                                  (let ((_%hd129518%_ _%hd129488129513%_))
                                    (if (gx#stx-pair? _%tl129489129515%_)
                                        (let ((_%e129490129520%_
                                               (gx#syntax-e
                                                _%tl129489129515%_)))
                                          (let ((_%hd129491129523%_
                                                 (##car _%e129490129520%_))
                                                (_%tl129492129525%_
                                                 (##cdr _%e129490129520%_)))
                                            (let ((_%body129528%_
                                                   _%hd129491129523%_))
                                              (if (gx#stx-null?
                                                   _%tl129492129525%_)
                                                  (cons _%form129480%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd129518%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body129528%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129483129498%_)))))
                                        (_%E129483129498%_)))))
                              (_%E129483129498%_))))
                      (_%E129483129498%_)))))
          (_%E129482129530%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx129537%_)
        (let ((_%form129539%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx129537%_ _%form129539%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g130366_
        (let ((_g130365_ (##length _g130366_)))
          (cond ((##fx= _g130365_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g130366_))
                ((##fx= _g130365_ 2)
                 (apply gx#core-compile-top-let-values%__% _g130366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g130366_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx129476%_)
        (gx#core-compile-top-let-values%__% _%stx129476%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx129474%_)
        (gx#core-compile-top-let-values%__% _%stx129474%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx129433%_)
        (let* ((_%e129434129444%_ _%stx129433%_)
               (_%E129436129448%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129434129444%_)))
               (_%E129435129470%_
                (lambda ()
                  (if (gx#stx-pair? _%e129434129444%_)
                      (let ((_%e129437129452%_
                             (gx#syntax-e _%e129434129444%_)))
                        (let ((_%hd129438129455%_ (##car _%e129437129452%_))
                              (_%tl129439129457%_ (##cdr _%e129437129452%_)))
                          (if (gx#stx-pair? _%tl129439129457%_)
                              (let ((_%e129440129460%_
                                     (gx#syntax-e _%tl129439129457%_)))
                                (let ((_%hd129441129463%_
                                       (##car _%e129440129460%_))
                                      (_%tl129442129465%_
                                       (##cdr _%e129440129460%_)))
                                  (let ((_%e129468%_ _%hd129441129463%_))
                                    (if (gx#stx-null? _%tl129442129465%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e129468%_)
                                                    '()))
                                        (_%E129436129448%_)))))
                              (_%E129436129448%_))))
                      (_%E129436129448%_)))))
          (_%E129435129470%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx129392%_)
        (let* ((_%e129393129403%_ _%stx129392%_)
               (_%E129395129407%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129393129403%_)))
               (_%E129394129429%_
                (lambda ()
                  (if (gx#stx-pair? _%e129393129403%_)
                      (let ((_%e129396129411%_
                             (gx#syntax-e _%e129393129403%_)))
                        (let ((_%hd129397129414%_ (##car _%e129396129411%_))
                              (_%tl129398129416%_ (##cdr _%e129396129411%_)))
                          (if (gx#stx-pair? _%tl129398129416%_)
                              (let ((_%e129399129419%_
                                     (gx#syntax-e _%tl129398129416%_)))
                                (let ((_%hd129400129422%_
                                       (##car _%e129399129419%_))
                                      (_%tl129401129424%_
                                       (##cdr _%e129399129419%_)))
                                  (let ((_%e129427%_ _%hd129400129422%_))
                                    (if (gx#stx-null? _%tl129401129424%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e129427%_)
                                                    '()))
                                        (_%E129395129407%_)))))
                              (_%E129395129407%_))))
                      (_%E129395129407%_)))))
          (_%E129394129429%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx129349%_)
        (let* ((_%e129350129360%_ _%stx129349%_)
               (_%E129352129364%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129350129360%_)))
               (_%E129351129388%_
                (lambda ()
                  (if (gx#stx-pair? _%e129350129360%_)
                      (let ((_%e129353129368%_
                             (gx#syntax-e _%e129350129360%_)))
                        (let ((_%hd129354129371%_ (##car _%e129353129368%_))
                              (_%tl129355129373%_ (##cdr _%e129353129368%_)))
                          (if (gx#stx-pair? _%tl129355129373%_)
                              (let ((_%e129356129376%_
                                     (gx#syntax-e _%tl129355129373%_)))
                                (let ((_%hd129357129379%_
                                       (##car _%e129356129376%_))
                                      (_%tl129358129381%_
                                       (##cdr _%e129356129376%_)))
                                  (let* ((_%rator129384%_ _%hd129357129379%_)
                                         (_%args129386%_ _%tl129358129381%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator129384%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args129386%_))))))
                              (_%E129352129364%_))))
                      (_%E129352129364%_)))))
          (_%E129351129388%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx129282%_)
        (let* ((_%e129283129299%_ _%stx129282%_)
               (_%E129285129303%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129283129299%_)))
               (_%E129284129345%_
                (lambda ()
                  (if (gx#stx-pair? _%e129283129299%_)
                      (let ((_%e129286129307%_
                             (gx#syntax-e _%e129283129299%_)))
                        (let ((_%hd129287129310%_ (##car _%e129286129307%_))
                              (_%tl129288129312%_ (##cdr _%e129286129307%_)))
                          (if (gx#stx-pair? _%tl129288129312%_)
                              (let ((_%e129289129315%_
                                     (gx#syntax-e _%tl129288129312%_)))
                                (let ((_%hd129290129318%_
                                       (##car _%e129289129315%_))
                                      (_%tl129291129320%_
                                       (##cdr _%e129289129315%_)))
                                  (let ((_%test129323%_ _%hd129290129318%_))
                                    (if (gx#stx-pair? _%tl129291129320%_)
                                        (let ((_%e129292129325%_
                                               (gx#syntax-e
                                                _%tl129291129320%_)))
                                          (let ((_%hd129293129328%_
                                                 (##car _%e129292129325%_))
                                                (_%tl129294129330%_
                                                 (##cdr _%e129292129325%_)))
                                            (let ((_%K129333%_
                                                   _%hd129293129328%_))
                                              (if (gx#stx-pair?
                                                   _%tl129294129330%_)
                                                  (let ((_%e129295129335%_
                                                         (gx#syntax-e
                                                          _%tl129294129330%_)))
                                                    (let ((_%hd129296129338%_
                                                           (##car _%e129295129335%_))
                                                          (_%tl129297129340%_
                                                           (##cdr _%e129295129335%_)))
                                                      (let ((_%E129343%_
                                                             _%hd129296129338%_))
                                                        (if (gx#stx-null?
                                                             _%tl129297129340%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test129323%_)
                                (cons (gx#core-compile-top-syntax _%K129333%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E129343%_)
                                            '()))))
                    (_%E129285129303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129285129303%_)))))
                                        (_%E129285129303%_)))))
                              (_%E129285129303%_))))
                      (_%E129285129303%_)))))
          (_%E129284129345%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx129241%_)
        (let* ((_%e129242129252%_ _%stx129241%_)
               (_%E129244129256%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129242129252%_)))
               (_%E129243129278%_
                (lambda ()
                  (if (gx#stx-pair? _%e129242129252%_)
                      (let ((_%e129245129260%_
                             (gx#syntax-e _%e129242129252%_)))
                        (let ((_%hd129246129263%_ (##car _%e129245129260%_))
                              (_%tl129247129265%_ (##cdr _%e129245129260%_)))
                          (if (gx#stx-pair? _%tl129247129265%_)
                              (let ((_%e129248129268%_
                                     (gx#syntax-e _%tl129247129265%_)))
                                (let ((_%hd129249129271%_
                                       (##car _%e129248129268%_))
                                      (_%tl129250129273%_
                                       (##cdr _%e129248129268%_)))
                                  (let ((_%id129276%_ _%hd129249129271%_))
                                    (if (gx#stx-null? _%tl129250129273%_)
                                        (if (gx#identifier? _%id129276%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id129276%_)
                                                        '()))
                                            (_%E129244129256%_))
                                        (_%E129244129256%_)))))
                              (_%E129244129256%_))))
                      (_%E129244129256%_)))))
          (_%E129243129278%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx129187%_)
        (let* ((_%e129188129201%_ _%stx129187%_)
               (_%E129190129205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129188129201%_)))
               (_%E129189129237%_
                (lambda ()
                  (if (gx#stx-pair? _%e129188129201%_)
                      (let ((_%e129191129209%_
                             (gx#syntax-e _%e129188129201%_)))
                        (let ((_%hd129192129212%_ (##car _%e129191129209%_))
                              (_%tl129193129214%_ (##cdr _%e129191129209%_)))
                          (if (gx#stx-pair? _%tl129193129214%_)
                              (let ((_%e129194129217%_
                                     (gx#syntax-e _%tl129193129214%_)))
                                (let ((_%hd129195129220%_
                                       (##car _%e129194129217%_))
                                      (_%tl129196129222%_
                                       (##cdr _%e129194129217%_)))
                                  (let ((_%id129225%_ _%hd129195129220%_))
                                    (if (gx#stx-pair? _%tl129196129222%_)
                                        (let ((_%e129197129227%_
                                               (gx#syntax-e
                                                _%tl129196129222%_)))
                                          (let ((_%hd129198129230%_
                                                 (##car _%e129197129227%_))
                                                (_%tl129199129232%_
                                                 (##cdr _%e129197129227%_)))
                                            (let ((_%expr129235%_
                                                   _%hd129198129230%_))
                                              (if (gx#stx-null?
                                                   _%tl129199129232%_)
                                                  (if (gx#identifier?
                                                       _%id129225%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id129225%_)
                          (cons (gx#core-compile-top-syntax _%expr129235%_)
                                '())))
              (_%E129190129205%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129190129205%_)))))
                                        (_%E129190129205%_)))))
                              (_%E129190129205%_))))
                      (_%E129190129205%_)))))
          (_%E129189129237%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id129181%_)
        (let ((_%$e129183%_ (gx#resolve-identifier__0 _%id129181%_)))
          (if _%$e129183%_
              (##unchecked-structure-ref _%$e129183%_ '1 '#f '#f)
              _%id129181%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd129179%_)
        (if (gx#identifier? _%hd129179%_)
            (gx#core-compile-top-runtime-ref _%hd129179%_)
            '#f)))))
