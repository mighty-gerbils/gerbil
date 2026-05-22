(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1779435582)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx188640%_)
        (let* ((_%e188641188648%_ _%stx188640%_)
               (_%E188643188652%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188641188648%_)))
               (_%E188642188666%_
                (lambda ()
                  (if (gx#stx-pair? _%e188641188648%_)
                      (let ((_%e188644188656%_
                             (gx#syntax-e _%e188641188648%_)))
                        (let ((_%hd188645188659%_ (##car _%e188644188656%_))
                              (_%tl188646188661%_ (##cdr _%e188644188656%_)))
                          (let* ((_%form188664%_ _%hd188645188659%_)
                                 (__self188669
                                  (gx#syntax-local-e__0 _%form188664%_))
                                 (__method188670
                                  (__method-ref
                                   __self188669
                                   'compile-top-syntax)))
                            (if __method188670
                                (__method188670 __self188669 _%stx188640%_)
                                (begin
                                  (error '"Missing method"
                                         __self188669
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E188643188652%_)))))
          (_%E188642188666%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self188589%_ _%stx188590%_)
        (let* ((_%self188593%_ _%self188589%_)
               (_%self188602188610%_ _%self188593%_)
               (_%E188604188613%_
                (lambda ()
                  (error '"No clause matching"
                         _%self188602188610%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K188605188626%_
                (lambda (_%K188616%_)
                  (let ((_%$e188618%_ (gx#stx-source _%stx188590%_)))
                    (if _%$e188618%_
                        (gx#stx-wrap-source
                         (_%K188616%_ _%stx188590%_)
                         _%$e188618%_)
                        (_%K188616%_ _%stx188590%_)))))
               (_%e188606188629%_
                (##unchecked-structure-ref _%self188602188610%_ '1 '#f '#f))
               (_%e188607188632%_
                (##unchecked-structure-ref _%self188602188610%_ '2 '#f '#f))
               (_%e188608188635%_
                (##unchecked-structure-ref _%self188602188610%_ '3 '#f '#f))
               (_%K188638%_ _%e188608188635%_))
          (_%K188605188626%_ _%K188638%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx188463%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx188463%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx188433%_)
        (let* ((_%e188434188441%_ _%stx188433%_)
               (_%E188436188445%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188434188441%_)))
               (_%E188435188459%_
                (lambda ()
                  (if (gx#stx-pair? _%e188434188441%_)
                      (let ((_%e188437188449%_
                             (gx#syntax-e _%e188434188441%_)))
                        (let ((_%hd188438188452%_ (##car _%e188437188449%_))
                              (_%tl188439188454%_ (##cdr _%e188437188449%_)))
                          (let ((_%body188457%_ _%tl188439188454%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body188457%_)))))
                      (_%E188436188445%_)))))
          (_%E188435188459%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx188402%_)
        (let* ((_%e188403188410%_ _%stx188402%_)
               (_%E188405188414%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188403188410%_)))
               (_%E188404188429%_
                (lambda ()
                  (if (gx#stx-pair? _%e188403188410%_)
                      (let ((_%e188406188418%_
                             (gx#syntax-e _%e188403188410%_)))
                        (let ((_%hd188407188421%_ (##car _%e188406188418%_))
                              (_%tl188408188423%_ (##cdr _%e188406188418%_)))
                          (let ((_%body188426%_ _%tl188408188423%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body188426%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E188405188414%_)))))
          (_%E188404188429%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx188372%_)
        (let* ((_%e188373188380%_ _%stx188372%_)
               (_%E188375188384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188373188380%_)))
               (_%E188374188398%_
                (lambda ()
                  (if (gx#stx-pair? _%e188373188380%_)
                      (let ((_%e188376188388%_
                             (gx#syntax-e _%e188373188380%_)))
                        (let ((_%hd188377188391%_ (##car _%e188376188388%_))
                              (_%tl188378188393%_ (##cdr _%e188376188388%_)))
                          (let ((_%body188396%_ _%tl188378188393%_))
                            (cons '%#begin-foreign _%body188396%_))))
                      (_%E188375188384%_)))))
          (_%E188374188398%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx188318%_)
        (let* ((_%e188319188332%_ _%stx188318%_)
               (_%E188321188336%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188319188332%_)))
               (_%E188320188368%_
                (lambda ()
                  (if (gx#stx-pair? _%e188319188332%_)
                      (let ((_%e188322188340%_
                             (gx#syntax-e _%e188319188332%_)))
                        (let ((_%hd188323188343%_ (##car _%e188322188340%_))
                              (_%tl188324188345%_ (##cdr _%e188322188340%_)))
                          (if (gx#stx-pair? _%tl188324188345%_)
                              (let ((_%e188325188348%_
                                     (gx#syntax-e _%tl188324188345%_)))
                                (let ((_%hd188326188351%_
                                       (##car _%e188325188348%_))
                                      (_%tl188327188353%_
                                       (##cdr _%e188325188348%_)))
                                  (let ((_%ann188356%_ _%hd188326188351%_))
                                    (if (gx#stx-pair? _%tl188327188353%_)
                                        (let ((_%e188328188358%_
                                               (gx#syntax-e
                                                _%tl188327188353%_)))
                                          (let ((_%hd188329188361%_
                                                 (##car _%e188328188358%_))
                                                (_%tl188330188363%_
                                                 (##cdr _%e188328188358%_)))
                                            (let ((_%expr188366%_
                                                   _%hd188329188361%_))
                                              (if (gx#stx-null?
                                                   _%tl188330188363%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr188366%_)
                                                  (_%E188321188336%_)))))
                                        (_%E188321188336%_)))))
                              (_%E188321188336%_))))
                      (_%E188321188336%_)))))
          (_%E188320188368%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx188288%_)
        (let* ((_%e188289188296%_ _%stx188288%_)
               (_%E188291188300%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188289188296%_)))
               (_%E188290188314%_
                (lambda ()
                  (if (gx#stx-pair? _%e188289188296%_)
                      (let ((_%e188292188304%_
                             (gx#syntax-e _%e188289188296%_)))
                        (let ((_%hd188293188307%_ (##car _%e188292188304%_))
                              (_%tl188294188309%_ (##cdr _%e188292188304%_)))
                          (let ((_%body188312%_ _%tl188294188309%_))
                            (cons '%#import _%body188312%_))))
                      (_%E188291188300%_)))))
          (_%E188290188314%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx188245%_)
        (let* ((_%e188246188256%_ _%stx188245%_)
               (_%E188248188260%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188246188256%_)))
               (_%E188247188284%_
                (lambda ()
                  (if (gx#stx-pair? _%e188246188256%_)
                      (let ((_%e188249188264%_
                             (gx#syntax-e _%e188246188256%_)))
                        (let ((_%hd188250188267%_ (##car _%e188249188264%_))
                              (_%tl188251188269%_ (##cdr _%e188249188264%_)))
                          (if (gx#stx-pair? _%tl188251188269%_)
                              (let ((_%e188252188272%_
                                     (gx#syntax-e _%tl188251188269%_)))
                                (let ((_%hd188253188275%_
                                       (##car _%e188252188272%_))
                                      (_%tl188254188277%_
                                       (##cdr _%e188252188272%_)))
                                  (let* ((_%hd188280%_ _%hd188253188275%_)
                                         (_%body188282%_ _%tl188254188277%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd188280%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body188282%_))))))
                              (_%E188248188260%_))))
                      (_%E188248188260%_)))))
          (_%E188247188284%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx188215%_)
        (let* ((_%e188216188223%_ _%stx188215%_)
               (_%E188218188227%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188216188223%_)))
               (_%E188217188241%_
                (lambda ()
                  (if (gx#stx-pair? _%e188216188223%_)
                      (let ((_%e188219188231%_
                             (gx#syntax-e _%e188216188223%_)))
                        (let ((_%hd188220188234%_ (##car _%e188219188231%_))
                              (_%tl188221188236%_ (##cdr _%e188219188231%_)))
                          (let ((_%body188239%_ _%tl188221188236%_))
                            (cons '%#export _%body188239%_))))
                      (_%E188218188227%_)))))
          (_%E188217188241%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx188185%_)
        (let* ((_%e188186188193%_ _%stx188185%_)
               (_%E188188188197%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188186188193%_)))
               (_%E188187188211%_
                (lambda ()
                  (if (gx#stx-pair? _%e188186188193%_)
                      (let ((_%e188189188201%_
                             (gx#syntax-e _%e188186188193%_)))
                        (let ((_%hd188190188204%_ (##car _%e188189188201%_))
                              (_%tl188191188206%_ (##cdr _%e188189188201%_)))
                          (let ((_%body188209%_ _%tl188191188206%_))
                            (cons '%#provide _%body188209%_))))
                      (_%E188188188197%_)))))
          (_%E188187188211%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx188155%_)
        (let* ((_%e188156188163%_ _%stx188155%_)
               (_%E188158188167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188156188163%_)))
               (_%E188157188181%_
                (lambda ()
                  (if (gx#stx-pair? _%e188156188163%_)
                      (let ((_%e188159188171%_
                             (gx#syntax-e _%e188156188163%_)))
                        (let ((_%hd188160188174%_ (##car _%e188159188171%_))
                              (_%tl188161188176%_ (##cdr _%e188159188171%_)))
                          (let ((_%body188179%_ _%tl188161188176%_))
                            (cons '%#extern _%body188179%_))))
                      (_%E188158188167%_)))))
          (_%E188157188181%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx188101%_)
        (let* ((_%e188102188115%_ _%stx188101%_)
               (_%E188104188119%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188102188115%_)))
               (_%E188103188151%_
                (lambda ()
                  (if (gx#stx-pair? _%e188102188115%_)
                      (let ((_%e188105188123%_
                             (gx#syntax-e _%e188102188115%_)))
                        (let ((_%hd188106188126%_ (##car _%e188105188123%_))
                              (_%tl188107188128%_ (##cdr _%e188105188123%_)))
                          (if (gx#stx-pair? _%tl188107188128%_)
                              (let ((_%e188108188131%_
                                     (gx#syntax-e _%tl188107188128%_)))
                                (let ((_%hd188109188134%_
                                       (##car _%e188108188131%_))
                                      (_%tl188110188136%_
                                       (##cdr _%e188108188131%_)))
                                  (let ((_%hd188139%_ _%hd188109188134%_))
                                    (if (gx#stx-pair? _%tl188110188136%_)
                                        (let ((_%e188111188141%_
                                               (gx#syntax-e
                                                _%tl188110188136%_)))
                                          (let ((_%hd188112188144%_
                                                 (##car _%e188111188141%_))
                                                (_%tl188113188146%_
                                                 (##cdr _%e188111188141%_)))
                                            (let ((_%expr188149%_
                                                   _%hd188112188144%_))
                                              (if (gx#stx-null?
                                                   _%tl188113188146%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd188139%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr188149%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188104188119%_)))))
                                        (_%E188104188119%_)))))
                              (_%E188104188119%_))))
                      (_%E188104188119%_)))))
          (_%E188103188151%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx188046%_)
        (let* ((_%e188047188060%_ _%stx188046%_)
               (_%E188049188064%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188047188060%_)))
               (_%E188048188097%_
                (lambda ()
                  (if (gx#stx-pair? _%e188047188060%_)
                      (let ((_%e188050188068%_
                             (gx#syntax-e _%e188047188060%_)))
                        (let ((_%hd188051188071%_ (##car _%e188050188068%_))
                              (_%tl188052188073%_ (##cdr _%e188050188068%_)))
                          (if (gx#stx-pair? _%tl188052188073%_)
                              (let ((_%e188053188076%_
                                     (gx#syntax-e _%tl188052188073%_)))
                                (let ((_%hd188054188079%_
                                       (##car _%e188053188076%_))
                                      (_%tl188055188081%_
                                       (##cdr _%e188053188076%_)))
                                  (let ((_%hd188084%_ _%hd188054188079%_))
                                    (if (gx#stx-pair? _%tl188055188081%_)
                                        (let ((_%e188056188086%_
                                               (gx#syntax-e
                                                _%tl188055188081%_)))
                                          (let ((_%hd188057188089%_
                                                 (##car _%e188056188086%_))
                                                (_%tl188058188091%_
                                                 (##cdr _%e188056188086%_)))
                                            (let ((_%expr188094%_
                                                   _%hd188057188089%_))
                                              (if (gx#stx-null?
                                                   _%tl188058188091%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd188084%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr188094%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188049188064%_)))))
                                        (_%E188049188064%_)))))
                              (_%E188049188064%_))))
                      (_%E188049188064%_)))))
          (_%E188048188097%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx188016%_)
        (let* ((_%e188017188024%_ _%stx188016%_)
               (_%E188019188028%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188017188024%_)))
               (_%E188018188042%_
                (lambda ()
                  (if (gx#stx-pair? _%e188017188024%_)
                      (let ((_%e188020188032%_
                             (gx#syntax-e _%e188017188024%_)))
                        (let ((_%hd188021188035%_ (##car _%e188020188032%_))
                              (_%tl188022188037%_ (##cdr _%e188020188032%_)))
                          (let ((_%body188040%_ _%tl188022188037%_))
                            (cons '%#define-alias _%body188040%_))))
                      (_%E188019188028%_)))))
          (_%E188018188042%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx187986%_)
        (let* ((_%e187987187994%_ _%stx187986%_)
               (_%E187989187998%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187987187994%_)))
               (_%E187988188012%_
                (lambda ()
                  (if (gx#stx-pair? _%e187987187994%_)
                      (let ((_%e187990188002%_
                             (gx#syntax-e _%e187987187994%_)))
                        (let ((_%hd187991188005%_ (##car _%e187990188002%_))
                              (_%tl187992188007%_ (##cdr _%e187990188002%_)))
                          (let ((_%body188010%_ _%tl187992188007%_))
                            (cons '%#define-runtime _%body188010%_))))
                      (_%E187989187998%_)))))
          (_%E187988188012%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx187956%_)
        (let* ((_%e187957187964%_ _%stx187956%_)
               (_%E187959187968%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187957187964%_)))
               (_%E187958187982%_
                (lambda ()
                  (if (gx#stx-pair? _%e187957187964%_)
                      (let ((_%e187960187972%_
                             (gx#syntax-e _%e187957187964%_)))
                        (let ((_%hd187961187975%_ (##car _%e187960187972%_))
                              (_%tl187962187977%_ (##cdr _%e187960187972%_)))
                          (let ((_%decls187980%_ _%tl187962187977%_))
                            (cons '%#declare _%decls187980%_))))
                      (_%E187959187968%_)))))
          (_%E187958187982%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx187926%_)
        (let* ((_%e187927187934%_ _%stx187926%_)
               (_%E187929187938%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187927187934%_)))
               (_%E187928187952%_
                (lambda ()
                  (if (gx#stx-pair? _%e187927187934%_)
                      (let ((_%e187930187942%_
                             (gx#syntax-e _%e187927187934%_)))
                        (let ((_%hd187931187945%_ (##car _%e187930187942%_))
                              (_%tl187932187947%_ (##cdr _%e187930187942%_)))
                          (let ((_%clause187950%_ _%tl187932187947%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause187950%_)))))
                      (_%E187929187938%_)))))
          (_%E187928187952%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx187883%_)
        (let* ((_%e187884187894%_ _%stx187883%_)
               (_%E187886187898%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187884187894%_)))
               (_%E187885187922%_
                (lambda ()
                  (if (gx#stx-pair? _%e187884187894%_)
                      (let ((_%e187887187902%_
                             (gx#syntax-e _%e187884187894%_)))
                        (let ((_%hd187888187905%_ (##car _%e187887187902%_))
                              (_%tl187889187907%_ (##cdr _%e187887187902%_)))
                          (let ((_%hd187910%_ _%hd187888187905%_))
                            (if (gx#stx-pair? _%tl187889187907%_)
                                (let ((_%e187890187912%_
                                       (gx#syntax-e _%tl187889187907%_)))
                                  (let ((_%hd187891187915%_
                                         (##car _%e187890187912%_))
                                        (_%tl187892187917%_
                                         (##cdr _%e187890187912%_)))
                                    (let ((_%body187920%_ _%hd187891187915%_))
                                      (if (gx#stx-null? _%tl187892187917%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd187910%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body187920%_)
                                                      '()))
                                          (_%E187886187898%_)))))
                                (_%E187886187898%_)))))
                      (_%E187886187898%_)))))
          (_%E187885187922%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx187853%_)
        (let* ((_%e187854187861%_ _%stx187853%_)
               (_%E187856187865%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187854187861%_)))
               (_%E187855187879%_
                (lambda ()
                  (if (gx#stx-pair? _%e187854187861%_)
                      (let ((_%e187857187869%_
                             (gx#syntax-e _%e187854187861%_)))
                        (let ((_%hd187858187872%_ (##car _%e187857187869%_))
                              (_%tl187859187874%_ (##cdr _%e187857187869%_)))
                          (let ((_%clauses187877%_ _%tl187859187874%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses187877%_)))))
                      (_%E187856187865%_)))))
          (_%E187855187879%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx187788%_ _%form187789%_)
        (let* ((_%e187790187803%_ _%stx187788%_)
               (_%E187792187807%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187790187803%_)))
               (_%E187791187839%_
                (lambda ()
                  (if (gx#stx-pair? _%e187790187803%_)
                      (let ((_%e187793187811%_
                             (gx#syntax-e _%e187790187803%_)))
                        (let ((_%hd187794187814%_ (##car _%e187793187811%_))
                              (_%tl187795187816%_ (##cdr _%e187793187811%_)))
                          (if (gx#stx-pair? _%tl187795187816%_)
                              (let ((_%e187796187819%_
                                     (gx#syntax-e _%tl187795187816%_)))
                                (let ((_%hd187797187822%_
                                       (##car _%e187796187819%_))
                                      (_%tl187798187824%_
                                       (##cdr _%e187796187819%_)))
                                  (let ((_%hd187827%_ _%hd187797187822%_))
                                    (if (gx#stx-pair? _%tl187798187824%_)
                                        (let ((_%e187799187829%_
                                               (gx#syntax-e
                                                _%tl187798187824%_)))
                                          (let ((_%hd187800187832%_
                                                 (##car _%e187799187829%_))
                                                (_%tl187801187834%_
                                                 (##cdr _%e187799187829%_)))
                                            (let ((_%body187837%_
                                                   _%hd187800187832%_))
                                              (if (gx#stx-null?
                                                   _%tl187801187834%_)
                                                  (cons _%form187789%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd187827%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body187837%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187792187807%_)))))
                                        (_%E187792187807%_)))))
                              (_%E187792187807%_))))
                      (_%E187792187807%_)))))
          (_%E187791187839%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx187846%_)
        (let ((_%form187848%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx187846%_ _%form187848%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g188671_
        (let ((_g188672_ (##length _g188671_)))
          (cond ((##fx= _g188672_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g188671_))
                ((##fx= _g188672_ 2)
                 (apply gx#core-compile-top-let-values%__% _g188671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g188671_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx187785%_)
        (gx#core-compile-top-let-values%__% _%stx187785%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx187783%_)
        (gx#core-compile-top-let-values%__% _%stx187783%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx187742%_)
        (let* ((_%e187743187753%_ _%stx187742%_)
               (_%E187745187757%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187743187753%_)))
               (_%E187744187779%_
                (lambda ()
                  (if (gx#stx-pair? _%e187743187753%_)
                      (let ((_%e187746187761%_
                             (gx#syntax-e _%e187743187753%_)))
                        (let ((_%hd187747187764%_ (##car _%e187746187761%_))
                              (_%tl187748187766%_ (##cdr _%e187746187761%_)))
                          (if (gx#stx-pair? _%tl187748187766%_)
                              (let ((_%e187749187769%_
                                     (gx#syntax-e _%tl187748187766%_)))
                                (let ((_%hd187750187772%_
                                       (##car _%e187749187769%_))
                                      (_%tl187751187774%_
                                       (##cdr _%e187749187769%_)))
                                  (let ((_%e187777%_ _%hd187750187772%_))
                                    (if (gx#stx-null? _%tl187751187774%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e187777%_)
                                                    '()))
                                        (_%E187745187757%_)))))
                              (_%E187745187757%_))))
                      (_%E187745187757%_)))))
          (_%E187744187779%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx187701%_)
        (let* ((_%e187702187712%_ _%stx187701%_)
               (_%E187704187716%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187702187712%_)))
               (_%E187703187738%_
                (lambda ()
                  (if (gx#stx-pair? _%e187702187712%_)
                      (let ((_%e187705187720%_
                             (gx#syntax-e _%e187702187712%_)))
                        (let ((_%hd187706187723%_ (##car _%e187705187720%_))
                              (_%tl187707187725%_ (##cdr _%e187705187720%_)))
                          (if (gx#stx-pair? _%tl187707187725%_)
                              (let ((_%e187708187728%_
                                     (gx#syntax-e _%tl187707187725%_)))
                                (let ((_%hd187709187731%_
                                       (##car _%e187708187728%_))
                                      (_%tl187710187733%_
                                       (##cdr _%e187708187728%_)))
                                  (let ((_%e187736%_ _%hd187709187731%_))
                                    (if (gx#stx-null? _%tl187710187733%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e187736%_)
                                                    '()))
                                        (_%E187704187716%_)))))
                              (_%E187704187716%_))))
                      (_%E187704187716%_)))))
          (_%E187703187738%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx187658%_)
        (let* ((_%e187659187669%_ _%stx187658%_)
               (_%E187661187673%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187659187669%_)))
               (_%E187660187697%_
                (lambda ()
                  (if (gx#stx-pair? _%e187659187669%_)
                      (let ((_%e187662187677%_
                             (gx#syntax-e _%e187659187669%_)))
                        (let ((_%hd187663187680%_ (##car _%e187662187677%_))
                              (_%tl187664187682%_ (##cdr _%e187662187677%_)))
                          (if (gx#stx-pair? _%tl187664187682%_)
                              (let ((_%e187665187685%_
                                     (gx#syntax-e _%tl187664187682%_)))
                                (let ((_%hd187666187688%_
                                       (##car _%e187665187685%_))
                                      (_%tl187667187690%_
                                       (##cdr _%e187665187685%_)))
                                  (let* ((_%rator187693%_ _%hd187666187688%_)
                                         (_%args187695%_ _%tl187667187690%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator187693%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args187695%_))))))
                              (_%E187661187673%_))))
                      (_%E187661187673%_)))))
          (_%E187660187697%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx187591%_)
        (let* ((_%e187592187608%_ _%stx187591%_)
               (_%E187594187612%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187592187608%_)))
               (_%E187593187654%_
                (lambda ()
                  (if (gx#stx-pair? _%e187592187608%_)
                      (let ((_%e187595187616%_
                             (gx#syntax-e _%e187592187608%_)))
                        (let ((_%hd187596187619%_ (##car _%e187595187616%_))
                              (_%tl187597187621%_ (##cdr _%e187595187616%_)))
                          (if (gx#stx-pair? _%tl187597187621%_)
                              (let ((_%e187598187624%_
                                     (gx#syntax-e _%tl187597187621%_)))
                                (let ((_%hd187599187627%_
                                       (##car _%e187598187624%_))
                                      (_%tl187600187629%_
                                       (##cdr _%e187598187624%_)))
                                  (let ((_%test187632%_ _%hd187599187627%_))
                                    (if (gx#stx-pair? _%tl187600187629%_)
                                        (let ((_%e187601187634%_
                                               (gx#syntax-e
                                                _%tl187600187629%_)))
                                          (let ((_%hd187602187637%_
                                                 (##car _%e187601187634%_))
                                                (_%tl187603187639%_
                                                 (##cdr _%e187601187634%_)))
                                            (let ((_%K187642%_
                                                   _%hd187602187637%_))
                                              (if (gx#stx-pair?
                                                   _%tl187603187639%_)
                                                  (let ((_%e187604187644%_
                                                         (gx#syntax-e
                                                          _%tl187603187639%_)))
                                                    (let ((_%hd187605187647%_
                                                           (##car _%e187604187644%_))
                                                          (_%tl187606187649%_
                                                           (##cdr _%e187604187644%_)))
                                                      (let ((_%E187652%_
                                                             _%hd187605187647%_))
                                                        (if (gx#stx-null?
                                                             _%tl187606187649%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test187632%_)
                                (cons (gx#core-compile-top-syntax _%K187642%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E187652%_)
                                            '()))))
                    (_%E187594187612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187594187612%_)))))
                                        (_%E187594187612%_)))))
                              (_%E187594187612%_))))
                      (_%E187594187612%_)))))
          (_%E187593187654%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx187550%_)
        (let* ((_%e187551187561%_ _%stx187550%_)
               (_%E187553187565%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187551187561%_)))
               (_%E187552187587%_
                (lambda ()
                  (if (gx#stx-pair? _%e187551187561%_)
                      (let ((_%e187554187569%_
                             (gx#syntax-e _%e187551187561%_)))
                        (let ((_%hd187555187572%_ (##car _%e187554187569%_))
                              (_%tl187556187574%_ (##cdr _%e187554187569%_)))
                          (if (gx#stx-pair? _%tl187556187574%_)
                              (let ((_%e187557187577%_
                                     (gx#syntax-e _%tl187556187574%_)))
                                (let ((_%hd187558187580%_
                                       (##car _%e187557187577%_))
                                      (_%tl187559187582%_
                                       (##cdr _%e187557187577%_)))
                                  (let ((_%id187585%_ _%hd187558187580%_))
                                    (if (gx#stx-null? _%tl187559187582%_)
                                        (if (gx#identifier? _%id187585%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id187585%_)
                                                        '()))
                                            (_%E187553187565%_))
                                        (_%E187553187565%_)))))
                              (_%E187553187565%_))))
                      (_%E187553187565%_)))))
          (_%E187552187587%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx187496%_)
        (let* ((_%e187497187510%_ _%stx187496%_)
               (_%E187499187514%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187497187510%_)))
               (_%E187498187546%_
                (lambda ()
                  (if (gx#stx-pair? _%e187497187510%_)
                      (let ((_%e187500187518%_
                             (gx#syntax-e _%e187497187510%_)))
                        (let ((_%hd187501187521%_ (##car _%e187500187518%_))
                              (_%tl187502187523%_ (##cdr _%e187500187518%_)))
                          (if (gx#stx-pair? _%tl187502187523%_)
                              (let ((_%e187503187526%_
                                     (gx#syntax-e _%tl187502187523%_)))
                                (let ((_%hd187504187529%_
                                       (##car _%e187503187526%_))
                                      (_%tl187505187531%_
                                       (##cdr _%e187503187526%_)))
                                  (let ((_%id187534%_ _%hd187504187529%_))
                                    (if (gx#stx-pair? _%tl187505187531%_)
                                        (let ((_%e187506187536%_
                                               (gx#syntax-e
                                                _%tl187505187531%_)))
                                          (let ((_%hd187507187539%_
                                                 (##car _%e187506187536%_))
                                                (_%tl187508187541%_
                                                 (##cdr _%e187506187536%_)))
                                            (let ((_%expr187544%_
                                                   _%hd187507187539%_))
                                              (if (gx#stx-null?
                                                   _%tl187508187541%_)
                                                  (if (gx#identifier?
                                                       _%id187534%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id187534%_)
                          (cons (gx#core-compile-top-syntax _%expr187544%_)
                                '())))
              (_%E187499187514%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187499187514%_)))))
                                        (_%E187499187514%_)))))
                              (_%E187499187514%_))))
                      (_%E187499187514%_)))))
          (_%E187498187546%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id187490%_)
        (let ((_%$e187492%_ (gx#resolve-identifier__0 _%id187490%_)))
          (if _%$e187492%_
              (##unchecked-structure-ref _%$e187492%_ '1 '#f '#f)
              _%id187490%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd187488%_)
        (if (gx#identifier? _%hd187488%_)
            (gx#core-compile-top-runtime-ref _%hd187488%_)
            '#f)))))
