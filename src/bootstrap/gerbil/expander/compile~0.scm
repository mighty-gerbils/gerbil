(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1733870075)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx130371%_)
        (let* ((_%e130372130379%_ _%stx130371%_)
               (_%E130374130383%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130372130379%_)))
               (_%E130373130397%_
                (lambda ()
                  (if (gx#stx-pair? _%e130372130379%_)
                      (let ((_%e130375130387%_
                             (gx#syntax-e _%e130372130379%_)))
                        (let ((_%hd130376130390%_ (##car _%e130375130387%_))
                              (_%tl130377130392%_ (##cdr _%e130375130387%_)))
                          (let* ((_%form130395%_ _%hd130376130390%_)
                                 (__self130400
                                  (gx#syntax-local-e__0 _%form130395%_))
                                 (__method130401
                                  (__method-ref
                                   __self130400
                                   'compile-top-syntax)))
                            (if __method130401
                                (__method130401 __self130400 _%stx130371%_)
                                (begin
                                  (error '"Missing method"
                                         __self130400
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E130374130383%_)))))
          (_%E130373130397%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self129214130317%_ _%stx130319%_)
        (let* ((_%self130321%_ _%self129214130317%_)
               (_%self130323%_ _%self130321%_)
               (_%self130332130340%_ _%self130323%_)
               (_%E130334130344%_
                (lambda ()
                  (error '"No clause matching"
                         _%self130332130340%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K130335130357%_
                (lambda (_%K130347%_)
                  (let ((_%$e130349%_ (gx#stx-source _%stx130319%_)))
                    (if _%$e130349%_
                        ((lambda (_%g130351130353%_)
                           (gx#stx-wrap-source
                            (_%K130347%_ _%stx130319%_)
                            _%g130351130353%_))
                         _%$e130349%_)
                        (_%K130347%_ _%stx130319%_)))))
               (_%e130336130360%_
                (##unchecked-structure-ref _%self130332130340%_ '1 '#f '#f))
               (_%e130337130363%_
                (##unchecked-structure-ref _%self130332130340%_ '2 '#f '#f))
               (_%e130338130366%_
                (##unchecked-structure-ref _%self130332130340%_ '3 '#f '#f))
               (_%K130369%_ _%e130338130366%_))
          (_%K130335130357%_ _%K130369%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx130191%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx130191%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx130161%_)
        (let* ((_%e130162130169%_ _%stx130161%_)
               (_%E130164130173%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130162130169%_)))
               (_%E130163130187%_
                (lambda ()
                  (if (gx#stx-pair? _%e130162130169%_)
                      (let ((_%e130165130177%_
                             (gx#syntax-e _%e130162130169%_)))
                        (let ((_%hd130166130180%_ (##car _%e130165130177%_))
                              (_%tl130167130182%_ (##cdr _%e130165130177%_)))
                          (let ((_%body130185%_ _%tl130167130182%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body130185%_)))))
                      (_%E130164130173%_)))))
          (_%E130163130187%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx130130%_)
        (let* ((_%e130131130138%_ _%stx130130%_)
               (_%E130133130142%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130131130138%_)))
               (_%E130132130157%_
                (lambda ()
                  (if (gx#stx-pair? _%e130131130138%_)
                      (let ((_%e130134130146%_
                             (gx#syntax-e _%e130131130138%_)))
                        (let ((_%hd130135130149%_ (##car _%e130134130146%_))
                              (_%tl130136130151%_ (##cdr _%e130134130146%_)))
                          (let ((_%body130154%_ _%tl130136130151%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body130154%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E130133130142%_)))))
          (_%E130132130157%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx130100%_)
        (let* ((_%e130101130108%_ _%stx130100%_)
               (_%E130103130112%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130101130108%_)))
               (_%E130102130126%_
                (lambda ()
                  (if (gx#stx-pair? _%e130101130108%_)
                      (let ((_%e130104130116%_
                             (gx#syntax-e _%e130101130108%_)))
                        (let ((_%hd130105130119%_ (##car _%e130104130116%_))
                              (_%tl130106130121%_ (##cdr _%e130104130116%_)))
                          (let ((_%body130124%_ _%tl130106130121%_))
                            (cons '%#begin-foreign _%body130124%_))))
                      (_%E130103130112%_)))))
          (_%E130102130126%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx130046%_)
        (let* ((_%e130047130060%_ _%stx130046%_)
               (_%E130049130064%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130047130060%_)))
               (_%E130048130096%_
                (lambda ()
                  (if (gx#stx-pair? _%e130047130060%_)
                      (let ((_%e130050130068%_
                             (gx#syntax-e _%e130047130060%_)))
                        (let ((_%hd130051130071%_ (##car _%e130050130068%_))
                              (_%tl130052130073%_ (##cdr _%e130050130068%_)))
                          (if (gx#stx-pair? _%tl130052130073%_)
                              (let ((_%e130053130076%_
                                     (gx#syntax-e _%tl130052130073%_)))
                                (let ((_%hd130054130079%_
                                       (##car _%e130053130076%_))
                                      (_%tl130055130081%_
                                       (##cdr _%e130053130076%_)))
                                  (let ((_%ann130084%_ _%hd130054130079%_))
                                    (if (gx#stx-pair? _%tl130055130081%_)
                                        (let ((_%e130056130086%_
                                               (gx#syntax-e
                                                _%tl130055130081%_)))
                                          (let ((_%hd130057130089%_
                                                 (##car _%e130056130086%_))
                                                (_%tl130058130091%_
                                                 (##cdr _%e130056130086%_)))
                                            (let ((_%expr130094%_
                                                   _%hd130057130089%_))
                                              (if (gx#stx-null?
                                                   _%tl130058130091%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr130094%_)
                                                  (_%E130049130064%_)))))
                                        (_%E130049130064%_)))))
                              (_%E130049130064%_))))
                      (_%E130049130064%_)))))
          (_%E130048130096%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx130016%_)
        (let* ((_%e130017130024%_ _%stx130016%_)
               (_%E130019130028%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130017130024%_)))
               (_%E130018130042%_
                (lambda ()
                  (if (gx#stx-pair? _%e130017130024%_)
                      (let ((_%e130020130032%_
                             (gx#syntax-e _%e130017130024%_)))
                        (let ((_%hd130021130035%_ (##car _%e130020130032%_))
                              (_%tl130022130037%_ (##cdr _%e130020130032%_)))
                          (let ((_%body130040%_ _%tl130022130037%_))
                            (cons '%#import _%body130040%_))))
                      (_%E130019130028%_)))))
          (_%E130018130042%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx129973%_)
        (let* ((_%e129974129984%_ _%stx129973%_)
               (_%E129976129988%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129974129984%_)))
               (_%E129975130012%_
                (lambda ()
                  (if (gx#stx-pair? _%e129974129984%_)
                      (let ((_%e129977129992%_
                             (gx#syntax-e _%e129974129984%_)))
                        (let ((_%hd129978129995%_ (##car _%e129977129992%_))
                              (_%tl129979129997%_ (##cdr _%e129977129992%_)))
                          (if (gx#stx-pair? _%tl129979129997%_)
                              (let ((_%e129980130000%_
                                     (gx#syntax-e _%tl129979129997%_)))
                                (let ((_%hd129981130003%_
                                       (##car _%e129980130000%_))
                                      (_%tl129982130005%_
                                       (##cdr _%e129980130000%_)))
                                  (let* ((_%hd130008%_ _%hd129981130003%_)
                                         (_%body130010%_ _%tl129982130005%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd130008%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body130010%_))))))
                              (_%E129976129988%_))))
                      (_%E129976129988%_)))))
          (_%E129975130012%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx129943%_)
        (let* ((_%e129944129951%_ _%stx129943%_)
               (_%E129946129955%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129944129951%_)))
               (_%E129945129969%_
                (lambda ()
                  (if (gx#stx-pair? _%e129944129951%_)
                      (let ((_%e129947129959%_
                             (gx#syntax-e _%e129944129951%_)))
                        (let ((_%hd129948129962%_ (##car _%e129947129959%_))
                              (_%tl129949129964%_ (##cdr _%e129947129959%_)))
                          (let ((_%body129967%_ _%tl129949129964%_))
                            (cons '%#export _%body129967%_))))
                      (_%E129946129955%_)))))
          (_%E129945129969%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx129913%_)
        (let* ((_%e129914129921%_ _%stx129913%_)
               (_%E129916129925%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129914129921%_)))
               (_%E129915129939%_
                (lambda ()
                  (if (gx#stx-pair? _%e129914129921%_)
                      (let ((_%e129917129929%_
                             (gx#syntax-e _%e129914129921%_)))
                        (let ((_%hd129918129932%_ (##car _%e129917129929%_))
                              (_%tl129919129934%_ (##cdr _%e129917129929%_)))
                          (let ((_%body129937%_ _%tl129919129934%_))
                            (cons '%#provide _%body129937%_))))
                      (_%E129916129925%_)))))
          (_%E129915129939%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx129883%_)
        (let* ((_%e129884129891%_ _%stx129883%_)
               (_%E129886129895%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129884129891%_)))
               (_%E129885129909%_
                (lambda ()
                  (if (gx#stx-pair? _%e129884129891%_)
                      (let ((_%e129887129899%_
                             (gx#syntax-e _%e129884129891%_)))
                        (let ((_%hd129888129902%_ (##car _%e129887129899%_))
                              (_%tl129889129904%_ (##cdr _%e129887129899%_)))
                          (let ((_%body129907%_ _%tl129889129904%_))
                            (cons '%#extern _%body129907%_))))
                      (_%E129886129895%_)))))
          (_%E129885129909%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx129829%_)
        (let* ((_%e129830129843%_ _%stx129829%_)
               (_%E129832129847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129830129843%_)))
               (_%E129831129879%_
                (lambda ()
                  (if (gx#stx-pair? _%e129830129843%_)
                      (let ((_%e129833129851%_
                             (gx#syntax-e _%e129830129843%_)))
                        (let ((_%hd129834129854%_ (##car _%e129833129851%_))
                              (_%tl129835129856%_ (##cdr _%e129833129851%_)))
                          (if (gx#stx-pair? _%tl129835129856%_)
                              (let ((_%e129836129859%_
                                     (gx#syntax-e _%tl129835129856%_)))
                                (let ((_%hd129837129862%_
                                       (##car _%e129836129859%_))
                                      (_%tl129838129864%_
                                       (##cdr _%e129836129859%_)))
                                  (let ((_%hd129867%_ _%hd129837129862%_))
                                    (if (gx#stx-pair? _%tl129838129864%_)
                                        (let ((_%e129839129869%_
                                               (gx#syntax-e
                                                _%tl129838129864%_)))
                                          (let ((_%hd129840129872%_
                                                 (##car _%e129839129869%_))
                                                (_%tl129841129874%_
                                                 (##cdr _%e129839129869%_)))
                                            (let ((_%expr129877%_
                                                   _%hd129840129872%_))
                                              (if (gx#stx-null?
                                                   _%tl129841129874%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd129867%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr129877%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129832129847%_)))))
                                        (_%E129832129847%_)))))
                              (_%E129832129847%_))))
                      (_%E129832129847%_)))))
          (_%E129831129879%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx129774%_)
        (let* ((_%e129775129788%_ _%stx129774%_)
               (_%E129777129792%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129775129788%_)))
               (_%E129776129825%_
                (lambda ()
                  (if (gx#stx-pair? _%e129775129788%_)
                      (let ((_%e129778129796%_
                             (gx#syntax-e _%e129775129788%_)))
                        (let ((_%hd129779129799%_ (##car _%e129778129796%_))
                              (_%tl129780129801%_ (##cdr _%e129778129796%_)))
                          (if (gx#stx-pair? _%tl129780129801%_)
                              (let ((_%e129781129804%_
                                     (gx#syntax-e _%tl129780129801%_)))
                                (let ((_%hd129782129807%_
                                       (##car _%e129781129804%_))
                                      (_%tl129783129809%_
                                       (##cdr _%e129781129804%_)))
                                  (let ((_%hd129812%_ _%hd129782129807%_))
                                    (if (gx#stx-pair? _%tl129783129809%_)
                                        (let ((_%e129784129814%_
                                               (gx#syntax-e
                                                _%tl129783129809%_)))
                                          (let ((_%hd129785129817%_
                                                 (##car _%e129784129814%_))
                                                (_%tl129786129819%_
                                                 (##cdr _%e129784129814%_)))
                                            (let ((_%expr129822%_
                                                   _%hd129785129817%_))
                                              (if (gx#stx-null?
                                                   _%tl129786129819%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd129812%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr129822%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129777129792%_)))))
                                        (_%E129777129792%_)))))
                              (_%E129777129792%_))))
                      (_%E129777129792%_)))))
          (_%E129776129825%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx129744%_)
        (let* ((_%e129745129752%_ _%stx129744%_)
               (_%E129747129756%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129745129752%_)))
               (_%E129746129770%_
                (lambda ()
                  (if (gx#stx-pair? _%e129745129752%_)
                      (let ((_%e129748129760%_
                             (gx#syntax-e _%e129745129752%_)))
                        (let ((_%hd129749129763%_ (##car _%e129748129760%_))
                              (_%tl129750129765%_ (##cdr _%e129748129760%_)))
                          (let ((_%body129768%_ _%tl129750129765%_))
                            (cons '%#define-alias _%body129768%_))))
                      (_%E129747129756%_)))))
          (_%E129746129770%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx129714%_)
        (let* ((_%e129715129722%_ _%stx129714%_)
               (_%E129717129726%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129715129722%_)))
               (_%E129716129740%_
                (lambda ()
                  (if (gx#stx-pair? _%e129715129722%_)
                      (let ((_%e129718129730%_
                             (gx#syntax-e _%e129715129722%_)))
                        (let ((_%hd129719129733%_ (##car _%e129718129730%_))
                              (_%tl129720129735%_ (##cdr _%e129718129730%_)))
                          (let ((_%body129738%_ _%tl129720129735%_))
                            (cons '%#define-runtime _%body129738%_))))
                      (_%E129717129726%_)))))
          (_%E129716129740%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx129684%_)
        (let* ((_%e129685129692%_ _%stx129684%_)
               (_%E129687129696%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129685129692%_)))
               (_%E129686129710%_
                (lambda ()
                  (if (gx#stx-pair? _%e129685129692%_)
                      (let ((_%e129688129700%_
                             (gx#syntax-e _%e129685129692%_)))
                        (let ((_%hd129689129703%_ (##car _%e129688129700%_))
                              (_%tl129690129705%_ (##cdr _%e129688129700%_)))
                          (let ((_%decls129708%_ _%tl129690129705%_))
                            (cons '%#declare _%decls129708%_))))
                      (_%E129687129696%_)))))
          (_%E129686129710%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx129654%_)
        (let* ((_%e129655129662%_ _%stx129654%_)
               (_%E129657129666%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129655129662%_)))
               (_%E129656129680%_
                (lambda ()
                  (if (gx#stx-pair? _%e129655129662%_)
                      (let ((_%e129658129670%_
                             (gx#syntax-e _%e129655129662%_)))
                        (let ((_%hd129659129673%_ (##car _%e129658129670%_))
                              (_%tl129660129675%_ (##cdr _%e129658129670%_)))
                          (let ((_%clause129678%_ _%tl129660129675%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause129678%_)))))
                      (_%E129657129666%_)))))
          (_%E129656129680%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx129611%_)
        (let* ((_%e129612129622%_ _%stx129611%_)
               (_%E129614129626%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129612129622%_)))
               (_%E129613129650%_
                (lambda ()
                  (if (gx#stx-pair? _%e129612129622%_)
                      (let ((_%e129615129630%_
                             (gx#syntax-e _%e129612129622%_)))
                        (let ((_%hd129616129633%_ (##car _%e129615129630%_))
                              (_%tl129617129635%_ (##cdr _%e129615129630%_)))
                          (let ((_%hd129638%_ _%hd129616129633%_))
                            (if (gx#stx-pair? _%tl129617129635%_)
                                (let ((_%e129618129640%_
                                       (gx#syntax-e _%tl129617129635%_)))
                                  (let ((_%hd129619129643%_
                                         (##car _%e129618129640%_))
                                        (_%tl129620129645%_
                                         (##cdr _%e129618129640%_)))
                                    (let ((_%body129648%_ _%hd129619129643%_))
                                      (if (gx#stx-null? _%tl129620129645%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd129638%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body129648%_)
                                                      '()))
                                          (_%E129614129626%_)))))
                                (_%E129614129626%_)))))
                      (_%E129614129626%_)))))
          (_%E129613129650%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx129581%_)
        (let* ((_%e129582129589%_ _%stx129581%_)
               (_%E129584129593%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129582129589%_)))
               (_%E129583129607%_
                (lambda ()
                  (if (gx#stx-pair? _%e129582129589%_)
                      (let ((_%e129585129597%_
                             (gx#syntax-e _%e129582129589%_)))
                        (let ((_%hd129586129600%_ (##car _%e129585129597%_))
                              (_%tl129587129602%_ (##cdr _%e129585129597%_)))
                          (let ((_%clauses129605%_ _%tl129587129602%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses129605%_)))))
                      (_%E129584129593%_)))))
          (_%E129583129607%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx129516%_ _%form129517%_)
        (let* ((_%e129518129531%_ _%stx129516%_)
               (_%E129520129535%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129518129531%_)))
               (_%E129519129567%_
                (lambda ()
                  (if (gx#stx-pair? _%e129518129531%_)
                      (let ((_%e129521129539%_
                             (gx#syntax-e _%e129518129531%_)))
                        (let ((_%hd129522129542%_ (##car _%e129521129539%_))
                              (_%tl129523129544%_ (##cdr _%e129521129539%_)))
                          (if (gx#stx-pair? _%tl129523129544%_)
                              (let ((_%e129524129547%_
                                     (gx#syntax-e _%tl129523129544%_)))
                                (let ((_%hd129525129550%_
                                       (##car _%e129524129547%_))
                                      (_%tl129526129552%_
                                       (##cdr _%e129524129547%_)))
                                  (let ((_%hd129555%_ _%hd129525129550%_))
                                    (if (gx#stx-pair? _%tl129526129552%_)
                                        (let ((_%e129527129557%_
                                               (gx#syntax-e
                                                _%tl129526129552%_)))
                                          (let ((_%hd129528129560%_
                                                 (##car _%e129527129557%_))
                                                (_%tl129529129562%_
                                                 (##cdr _%e129527129557%_)))
                                            (let ((_%body129565%_
                                                   _%hd129528129560%_))
                                              (if (gx#stx-null?
                                                   _%tl129529129562%_)
                                                  (cons _%form129517%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd129555%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body129565%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129520129535%_)))))
                                        (_%E129520129535%_)))))
                              (_%E129520129535%_))))
                      (_%E129520129535%_)))))
          (_%E129519129567%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx129574%_)
        (let ((_%form129576%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx129574%_ _%form129576%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g130403_
        (let ((_g130402_ (##length _g130403_)))
          (cond ((##fx= _g130402_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g130403_))
                ((##fx= _g130402_ 2)
                 (apply gx#core-compile-top-let-values%__% _g130403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g130403_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx129513%_)
        (gx#core-compile-top-let-values%__% _%stx129513%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx129511%_)
        (gx#core-compile-top-let-values%__% _%stx129511%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx129470%_)
        (let* ((_%e129471129481%_ _%stx129470%_)
               (_%E129473129485%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129471129481%_)))
               (_%E129472129507%_
                (lambda ()
                  (if (gx#stx-pair? _%e129471129481%_)
                      (let ((_%e129474129489%_
                             (gx#syntax-e _%e129471129481%_)))
                        (let ((_%hd129475129492%_ (##car _%e129474129489%_))
                              (_%tl129476129494%_ (##cdr _%e129474129489%_)))
                          (if (gx#stx-pair? _%tl129476129494%_)
                              (let ((_%e129477129497%_
                                     (gx#syntax-e _%tl129476129494%_)))
                                (let ((_%hd129478129500%_
                                       (##car _%e129477129497%_))
                                      (_%tl129479129502%_
                                       (##cdr _%e129477129497%_)))
                                  (let ((_%e129505%_ _%hd129478129500%_))
                                    (if (gx#stx-null? _%tl129479129502%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e129505%_)
                                                    '()))
                                        (_%E129473129485%_)))))
                              (_%E129473129485%_))))
                      (_%E129473129485%_)))))
          (_%E129472129507%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx129429%_)
        (let* ((_%e129430129440%_ _%stx129429%_)
               (_%E129432129444%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129430129440%_)))
               (_%E129431129466%_
                (lambda ()
                  (if (gx#stx-pair? _%e129430129440%_)
                      (let ((_%e129433129448%_
                             (gx#syntax-e _%e129430129440%_)))
                        (let ((_%hd129434129451%_ (##car _%e129433129448%_))
                              (_%tl129435129453%_ (##cdr _%e129433129448%_)))
                          (if (gx#stx-pair? _%tl129435129453%_)
                              (let ((_%e129436129456%_
                                     (gx#syntax-e _%tl129435129453%_)))
                                (let ((_%hd129437129459%_
                                       (##car _%e129436129456%_))
                                      (_%tl129438129461%_
                                       (##cdr _%e129436129456%_)))
                                  (let ((_%e129464%_ _%hd129437129459%_))
                                    (if (gx#stx-null? _%tl129438129461%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e129464%_)
                                                    '()))
                                        (_%E129432129444%_)))))
                              (_%E129432129444%_))))
                      (_%E129432129444%_)))))
          (_%E129431129466%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx129386%_)
        (let* ((_%e129387129397%_ _%stx129386%_)
               (_%E129389129401%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129387129397%_)))
               (_%E129388129425%_
                (lambda ()
                  (if (gx#stx-pair? _%e129387129397%_)
                      (let ((_%e129390129405%_
                             (gx#syntax-e _%e129387129397%_)))
                        (let ((_%hd129391129408%_ (##car _%e129390129405%_))
                              (_%tl129392129410%_ (##cdr _%e129390129405%_)))
                          (if (gx#stx-pair? _%tl129392129410%_)
                              (let ((_%e129393129413%_
                                     (gx#syntax-e _%tl129392129410%_)))
                                (let ((_%hd129394129416%_
                                       (##car _%e129393129413%_))
                                      (_%tl129395129418%_
                                       (##cdr _%e129393129413%_)))
                                  (let* ((_%rator129421%_ _%hd129394129416%_)
                                         (_%args129423%_ _%tl129395129418%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator129421%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args129423%_))))))
                              (_%E129389129401%_))))
                      (_%E129389129401%_)))))
          (_%E129388129425%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx129319%_)
        (let* ((_%e129320129336%_ _%stx129319%_)
               (_%E129322129340%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129320129336%_)))
               (_%E129321129382%_
                (lambda ()
                  (if (gx#stx-pair? _%e129320129336%_)
                      (let ((_%e129323129344%_
                             (gx#syntax-e _%e129320129336%_)))
                        (let ((_%hd129324129347%_ (##car _%e129323129344%_))
                              (_%tl129325129349%_ (##cdr _%e129323129344%_)))
                          (if (gx#stx-pair? _%tl129325129349%_)
                              (let ((_%e129326129352%_
                                     (gx#syntax-e _%tl129325129349%_)))
                                (let ((_%hd129327129355%_
                                       (##car _%e129326129352%_))
                                      (_%tl129328129357%_
                                       (##cdr _%e129326129352%_)))
                                  (let ((_%test129360%_ _%hd129327129355%_))
                                    (if (gx#stx-pair? _%tl129328129357%_)
                                        (let ((_%e129329129362%_
                                               (gx#syntax-e
                                                _%tl129328129357%_)))
                                          (let ((_%hd129330129365%_
                                                 (##car _%e129329129362%_))
                                                (_%tl129331129367%_
                                                 (##cdr _%e129329129362%_)))
                                            (let ((_%K129370%_
                                                   _%hd129330129365%_))
                                              (if (gx#stx-pair?
                                                   _%tl129331129367%_)
                                                  (let ((_%e129332129372%_
                                                         (gx#syntax-e
                                                          _%tl129331129367%_)))
                                                    (let ((_%hd129333129375%_
                                                           (##car _%e129332129372%_))
                                                          (_%tl129334129377%_
                                                           (##cdr _%e129332129372%_)))
                                                      (let ((_%E129380%_
                                                             _%hd129333129375%_))
                                                        (if (gx#stx-null?
                                                             _%tl129334129377%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test129360%_)
                                (cons (gx#core-compile-top-syntax _%K129370%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E129380%_)
                                            '()))))
                    (_%E129322129340%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129322129340%_)))))
                                        (_%E129322129340%_)))))
                              (_%E129322129340%_))))
                      (_%E129322129340%_)))))
          (_%E129321129382%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx129278%_)
        (let* ((_%e129279129289%_ _%stx129278%_)
               (_%E129281129293%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129279129289%_)))
               (_%E129280129315%_
                (lambda ()
                  (if (gx#stx-pair? _%e129279129289%_)
                      (let ((_%e129282129297%_
                             (gx#syntax-e _%e129279129289%_)))
                        (let ((_%hd129283129300%_ (##car _%e129282129297%_))
                              (_%tl129284129302%_ (##cdr _%e129282129297%_)))
                          (if (gx#stx-pair? _%tl129284129302%_)
                              (let ((_%e129285129305%_
                                     (gx#syntax-e _%tl129284129302%_)))
                                (let ((_%hd129286129308%_
                                       (##car _%e129285129305%_))
                                      (_%tl129287129310%_
                                       (##cdr _%e129285129305%_)))
                                  (let ((_%id129313%_ _%hd129286129308%_))
                                    (if (gx#stx-null? _%tl129287129310%_)
                                        (if (gx#identifier? _%id129313%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id129313%_)
                                                        '()))
                                            (_%E129281129293%_))
                                        (_%E129281129293%_)))))
                              (_%E129281129293%_))))
                      (_%E129281129293%_)))))
          (_%E129280129315%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx129224%_)
        (let* ((_%e129225129238%_ _%stx129224%_)
               (_%E129227129242%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129225129238%_)))
               (_%E129226129274%_
                (lambda ()
                  (if (gx#stx-pair? _%e129225129238%_)
                      (let ((_%e129228129246%_
                             (gx#syntax-e _%e129225129238%_)))
                        (let ((_%hd129229129249%_ (##car _%e129228129246%_))
                              (_%tl129230129251%_ (##cdr _%e129228129246%_)))
                          (if (gx#stx-pair? _%tl129230129251%_)
                              (let ((_%e129231129254%_
                                     (gx#syntax-e _%tl129230129251%_)))
                                (let ((_%hd129232129257%_
                                       (##car _%e129231129254%_))
                                      (_%tl129233129259%_
                                       (##cdr _%e129231129254%_)))
                                  (let ((_%id129262%_ _%hd129232129257%_))
                                    (if (gx#stx-pair? _%tl129233129259%_)
                                        (let ((_%e129234129264%_
                                               (gx#syntax-e
                                                _%tl129233129259%_)))
                                          (let ((_%hd129235129267%_
                                                 (##car _%e129234129264%_))
                                                (_%tl129236129269%_
                                                 (##cdr _%e129234129264%_)))
                                            (let ((_%expr129272%_
                                                   _%hd129235129267%_))
                                              (if (gx#stx-null?
                                                   _%tl129236129269%_)
                                                  (if (gx#identifier?
                                                       _%id129262%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id129262%_)
                          (cons (gx#core-compile-top-syntax _%expr129272%_)
                                '())))
              (_%E129227129242%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129227129242%_)))))
                                        (_%E129227129242%_)))))
                              (_%E129227129242%_))))
                      (_%E129227129242%_)))))
          (_%E129226129274%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id129218%_)
        (let ((_%$e129220%_ (gx#resolve-identifier__0 _%id129218%_)))
          (if _%$e129220%_
              (##unchecked-structure-ref _%$e129220%_ '1 '#f '#f)
              _%id129218%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd129216%_)
        (if (gx#identifier? _%hd129216%_)
            (gx#core-compile-top-runtime-ref _%hd129216%_)
            '#f)))))
