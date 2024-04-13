(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1713044316)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx128769%_)
        (let* ((_%e128770128777%_ _%stx128769%_)
               (_%E128772128781%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128770128777%_)))
               (_%E128771128795%_
                (lambda ()
                  (if (gx#stx-pair? _%e128770128777%_)
                      (let ((_%e128773128785%_
                             (gx#syntax-e _%e128770128777%_)))
                        (let ((_%hd128774128788%_ (##car _%e128773128785%_))
                              (_%tl128775128790%_ (##cdr _%e128773128785%_)))
                          (let* ((_%form128793%_ _%hd128774128788%_)
                                 (__self128798
                                  (gx#syntax-local-e__0 _%form128793%_))
                                 (__method128799
                                  (__method-ref
                                   __self128798
                                   'compile-top-syntax)))
                            (if __method128799
                                (__method128799 __self128798 _%stx128769%_)
                                (begin
                                  (error '"Missing method"
                                         __self128798
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E128772128781%_)))))
          (_%E128771128795%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127612128715%_ _%stx128717%_)
        (let* ((_%self128719%_ _%self127612128715%_)
               (_%self128721%_ _%self128719%_)
               (_%self128730128738%_ _%self128721%_)
               (_%E128732128742%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128730128738%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K128733128755%_
                (lambda (_%K128745%_)
                  (let ((_%$e128747%_ (gx#stx-source _%stx128717%_)))
                    (if _%$e128747%_
                        ((lambda (_%g128749128751%_)
                           (gx#stx-wrap-source
                            (_%K128745%_ _%stx128717%_)
                            _%g128749128751%_))
                         _%$e128747%_)
                        (_%K128745%_ _%stx128717%_)))))
               (_%e128734128758%_
                (##unchecked-structure-ref _%self128730128738%_ '1 '#f '#f))
               (_%e128735128761%_
                (##unchecked-structure-ref _%self128730128738%_ '2 '#f '#f))
               (_%e128736128764%_
                (##unchecked-structure-ref _%self128730128738%_ '3 '#f '#f))
               (_%K128767%_ _%e128736128764%_))
          (_%K128733128755%_ _%K128767%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx128589%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx128589%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx128559%_)
        (let* ((_%e128560128567%_ _%stx128559%_)
               (_%E128562128571%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128560128567%_)))
               (_%E128561128585%_
                (lambda ()
                  (if (gx#stx-pair? _%e128560128567%_)
                      (let ((_%e128563128575%_
                             (gx#syntax-e _%e128560128567%_)))
                        (let ((_%hd128564128578%_ (##car _%e128563128575%_))
                              (_%tl128565128580%_ (##cdr _%e128563128575%_)))
                          (let ((_%body128583%_ _%tl128565128580%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body128583%_)))))
                      (_%E128562128571%_)))))
          (_%E128561128585%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx128528%_)
        (let* ((_%e128529128536%_ _%stx128528%_)
               (_%E128531128540%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128529128536%_)))
               (_%E128530128555%_
                (lambda ()
                  (if (gx#stx-pair? _%e128529128536%_)
                      (let ((_%e128532128544%_
                             (gx#syntax-e _%e128529128536%_)))
                        (let ((_%hd128533128547%_ (##car _%e128532128544%_))
                              (_%tl128534128549%_ (##cdr _%e128532128544%_)))
                          (let ((_%body128552%_ _%tl128534128549%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body128552%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E128531128540%_)))))
          (_%E128530128555%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx128498%_)
        (let* ((_%e128499128506%_ _%stx128498%_)
               (_%E128501128510%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128499128506%_)))
               (_%E128500128524%_
                (lambda ()
                  (if (gx#stx-pair? _%e128499128506%_)
                      (let ((_%e128502128514%_
                             (gx#syntax-e _%e128499128506%_)))
                        (let ((_%hd128503128517%_ (##car _%e128502128514%_))
                              (_%tl128504128519%_ (##cdr _%e128502128514%_)))
                          (let ((_%body128522%_ _%tl128504128519%_))
                            (cons '%#begin-foreign _%body128522%_))))
                      (_%E128501128510%_)))))
          (_%E128500128524%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx128444%_)
        (let* ((_%e128445128458%_ _%stx128444%_)
               (_%E128447128462%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128445128458%_)))
               (_%E128446128494%_
                (lambda ()
                  (if (gx#stx-pair? _%e128445128458%_)
                      (let ((_%e128448128466%_
                             (gx#syntax-e _%e128445128458%_)))
                        (let ((_%hd128449128469%_ (##car _%e128448128466%_))
                              (_%tl128450128471%_ (##cdr _%e128448128466%_)))
                          (if (gx#stx-pair? _%tl128450128471%_)
                              (let ((_%e128451128474%_
                                     (gx#syntax-e _%tl128450128471%_)))
                                (let ((_%hd128452128477%_
                                       (##car _%e128451128474%_))
                                      (_%tl128453128479%_
                                       (##cdr _%e128451128474%_)))
                                  (let ((_%ann128482%_ _%hd128452128477%_))
                                    (if (gx#stx-pair? _%tl128453128479%_)
                                        (let ((_%e128454128484%_
                                               (gx#syntax-e
                                                _%tl128453128479%_)))
                                          (let ((_%hd128455128487%_
                                                 (##car _%e128454128484%_))
                                                (_%tl128456128489%_
                                                 (##cdr _%e128454128484%_)))
                                            (let ((_%expr128492%_
                                                   _%hd128455128487%_))
                                              (if (gx#stx-null?
                                                   _%tl128456128489%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr128492%_)
                                                  (_%E128447128462%_)))))
                                        (_%E128447128462%_)))))
                              (_%E128447128462%_))))
                      (_%E128447128462%_)))))
          (_%E128446128494%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx128414%_)
        (let* ((_%e128415128422%_ _%stx128414%_)
               (_%E128417128426%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128415128422%_)))
               (_%E128416128440%_
                (lambda ()
                  (if (gx#stx-pair? _%e128415128422%_)
                      (let ((_%e128418128430%_
                             (gx#syntax-e _%e128415128422%_)))
                        (let ((_%hd128419128433%_ (##car _%e128418128430%_))
                              (_%tl128420128435%_ (##cdr _%e128418128430%_)))
                          (let ((_%body128438%_ _%tl128420128435%_))
                            (cons '%#import _%body128438%_))))
                      (_%E128417128426%_)))))
          (_%E128416128440%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx128371%_)
        (let* ((_%e128372128382%_ _%stx128371%_)
               (_%E128374128386%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128372128382%_)))
               (_%E128373128410%_
                (lambda ()
                  (if (gx#stx-pair? _%e128372128382%_)
                      (let ((_%e128375128390%_
                             (gx#syntax-e _%e128372128382%_)))
                        (let ((_%hd128376128393%_ (##car _%e128375128390%_))
                              (_%tl128377128395%_ (##cdr _%e128375128390%_)))
                          (if (gx#stx-pair? _%tl128377128395%_)
                              (let ((_%e128378128398%_
                                     (gx#syntax-e _%tl128377128395%_)))
                                (let ((_%hd128379128401%_
                                       (##car _%e128378128398%_))
                                      (_%tl128380128403%_
                                       (##cdr _%e128378128398%_)))
                                  (let* ((_%hd128406%_ _%hd128379128401%_)
                                         (_%body128408%_ _%tl128380128403%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd128406%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body128408%_))))))
                              (_%E128374128386%_))))
                      (_%E128374128386%_)))))
          (_%E128373128410%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx128341%_)
        (let* ((_%e128342128349%_ _%stx128341%_)
               (_%E128344128353%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128342128349%_)))
               (_%E128343128367%_
                (lambda ()
                  (if (gx#stx-pair? _%e128342128349%_)
                      (let ((_%e128345128357%_
                             (gx#syntax-e _%e128342128349%_)))
                        (let ((_%hd128346128360%_ (##car _%e128345128357%_))
                              (_%tl128347128362%_ (##cdr _%e128345128357%_)))
                          (let ((_%body128365%_ _%tl128347128362%_))
                            (cons '%#export _%body128365%_))))
                      (_%E128344128353%_)))))
          (_%E128343128367%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx128311%_)
        (let* ((_%e128312128319%_ _%stx128311%_)
               (_%E128314128323%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128312128319%_)))
               (_%E128313128337%_
                (lambda ()
                  (if (gx#stx-pair? _%e128312128319%_)
                      (let ((_%e128315128327%_
                             (gx#syntax-e _%e128312128319%_)))
                        (let ((_%hd128316128330%_ (##car _%e128315128327%_))
                              (_%tl128317128332%_ (##cdr _%e128315128327%_)))
                          (let ((_%body128335%_ _%tl128317128332%_))
                            (cons '%#provide _%body128335%_))))
                      (_%E128314128323%_)))))
          (_%E128313128337%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx128281%_)
        (let* ((_%e128282128289%_ _%stx128281%_)
               (_%E128284128293%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128282128289%_)))
               (_%E128283128307%_
                (lambda ()
                  (if (gx#stx-pair? _%e128282128289%_)
                      (let ((_%e128285128297%_
                             (gx#syntax-e _%e128282128289%_)))
                        (let ((_%hd128286128300%_ (##car _%e128285128297%_))
                              (_%tl128287128302%_ (##cdr _%e128285128297%_)))
                          (let ((_%body128305%_ _%tl128287128302%_))
                            (cons '%#extern _%body128305%_))))
                      (_%E128284128293%_)))))
          (_%E128283128307%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx128227%_)
        (let* ((_%e128228128241%_ _%stx128227%_)
               (_%E128230128245%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128228128241%_)))
               (_%E128229128277%_
                (lambda ()
                  (if (gx#stx-pair? _%e128228128241%_)
                      (let ((_%e128231128249%_
                             (gx#syntax-e _%e128228128241%_)))
                        (let ((_%hd128232128252%_ (##car _%e128231128249%_))
                              (_%tl128233128254%_ (##cdr _%e128231128249%_)))
                          (if (gx#stx-pair? _%tl128233128254%_)
                              (let ((_%e128234128257%_
                                     (gx#syntax-e _%tl128233128254%_)))
                                (let ((_%hd128235128260%_
                                       (##car _%e128234128257%_))
                                      (_%tl128236128262%_
                                       (##cdr _%e128234128257%_)))
                                  (let ((_%hd128265%_ _%hd128235128260%_))
                                    (if (gx#stx-pair? _%tl128236128262%_)
                                        (let ((_%e128237128267%_
                                               (gx#syntax-e
                                                _%tl128236128262%_)))
                                          (let ((_%hd128238128270%_
                                                 (##car _%e128237128267%_))
                                                (_%tl128239128272%_
                                                 (##cdr _%e128237128267%_)))
                                            (let ((_%expr128275%_
                                                   _%hd128238128270%_))
                                              (if (gx#stx-null?
                                                   _%tl128239128272%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd128265%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr128275%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128230128245%_)))))
                                        (_%E128230128245%_)))))
                              (_%E128230128245%_))))
                      (_%E128230128245%_)))))
          (_%E128229128277%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx128172%_)
        (let* ((_%e128173128186%_ _%stx128172%_)
               (_%E128175128190%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128173128186%_)))
               (_%E128174128223%_
                (lambda ()
                  (if (gx#stx-pair? _%e128173128186%_)
                      (let ((_%e128176128194%_
                             (gx#syntax-e _%e128173128186%_)))
                        (let ((_%hd128177128197%_ (##car _%e128176128194%_))
                              (_%tl128178128199%_ (##cdr _%e128176128194%_)))
                          (if (gx#stx-pair? _%tl128178128199%_)
                              (let ((_%e128179128202%_
                                     (gx#syntax-e _%tl128178128199%_)))
                                (let ((_%hd128180128205%_
                                       (##car _%e128179128202%_))
                                      (_%tl128181128207%_
                                       (##cdr _%e128179128202%_)))
                                  (let ((_%hd128210%_ _%hd128180128205%_))
                                    (if (gx#stx-pair? _%tl128181128207%_)
                                        (let ((_%e128182128212%_
                                               (gx#syntax-e
                                                _%tl128181128207%_)))
                                          (let ((_%hd128183128215%_
                                                 (##car _%e128182128212%_))
                                                (_%tl128184128217%_
                                                 (##cdr _%e128182128212%_)))
                                            (let ((_%expr128220%_
                                                   _%hd128183128215%_))
                                              (if (gx#stx-null?
                                                   _%tl128184128217%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd128210%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr128220%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128175128190%_)))))
                                        (_%E128175128190%_)))))
                              (_%E128175128190%_))))
                      (_%E128175128190%_)))))
          (_%E128174128223%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx128142%_)
        (let* ((_%e128143128150%_ _%stx128142%_)
               (_%E128145128154%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128143128150%_)))
               (_%E128144128168%_
                (lambda ()
                  (if (gx#stx-pair? _%e128143128150%_)
                      (let ((_%e128146128158%_
                             (gx#syntax-e _%e128143128150%_)))
                        (let ((_%hd128147128161%_ (##car _%e128146128158%_))
                              (_%tl128148128163%_ (##cdr _%e128146128158%_)))
                          (let ((_%body128166%_ _%tl128148128163%_))
                            (cons '%#define-alias _%body128166%_))))
                      (_%E128145128154%_)))))
          (_%E128144128168%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx128112%_)
        (let* ((_%e128113128120%_ _%stx128112%_)
               (_%E128115128124%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128113128120%_)))
               (_%E128114128138%_
                (lambda ()
                  (if (gx#stx-pair? _%e128113128120%_)
                      (let ((_%e128116128128%_
                             (gx#syntax-e _%e128113128120%_)))
                        (let ((_%hd128117128131%_ (##car _%e128116128128%_))
                              (_%tl128118128133%_ (##cdr _%e128116128128%_)))
                          (let ((_%body128136%_ _%tl128118128133%_))
                            (cons '%#define-runtime _%body128136%_))))
                      (_%E128115128124%_)))))
          (_%E128114128138%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx128082%_)
        (let* ((_%e128083128090%_ _%stx128082%_)
               (_%E128085128094%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128083128090%_)))
               (_%E128084128108%_
                (lambda ()
                  (if (gx#stx-pair? _%e128083128090%_)
                      (let ((_%e128086128098%_
                             (gx#syntax-e _%e128083128090%_)))
                        (let ((_%hd128087128101%_ (##car _%e128086128098%_))
                              (_%tl128088128103%_ (##cdr _%e128086128098%_)))
                          (let ((_%decls128106%_ _%tl128088128103%_))
                            (cons '%#declare _%decls128106%_))))
                      (_%E128085128094%_)))))
          (_%E128084128108%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx128052%_)
        (let* ((_%e128053128060%_ _%stx128052%_)
               (_%E128055128064%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128053128060%_)))
               (_%E128054128078%_
                (lambda ()
                  (if (gx#stx-pair? _%e128053128060%_)
                      (let ((_%e128056128068%_
                             (gx#syntax-e _%e128053128060%_)))
                        (let ((_%hd128057128071%_ (##car _%e128056128068%_))
                              (_%tl128058128073%_ (##cdr _%e128056128068%_)))
                          (let ((_%clause128076%_ _%tl128058128073%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause128076%_)))))
                      (_%E128055128064%_)))))
          (_%E128054128078%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx128009%_)
        (let* ((_%e128010128020%_ _%stx128009%_)
               (_%E128012128024%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128010128020%_)))
               (_%E128011128048%_
                (lambda ()
                  (if (gx#stx-pair? _%e128010128020%_)
                      (let ((_%e128013128028%_
                             (gx#syntax-e _%e128010128020%_)))
                        (let ((_%hd128014128031%_ (##car _%e128013128028%_))
                              (_%tl128015128033%_ (##cdr _%e128013128028%_)))
                          (let ((_%hd128036%_ _%hd128014128031%_))
                            (if (gx#stx-pair? _%tl128015128033%_)
                                (let ((_%e128016128038%_
                                       (gx#syntax-e _%tl128015128033%_)))
                                  (let ((_%hd128017128041%_
                                         (##car _%e128016128038%_))
                                        (_%tl128018128043%_
                                         (##cdr _%e128016128038%_)))
                                    (let ((_%body128046%_ _%hd128017128041%_))
                                      (if (gx#stx-null? _%tl128018128043%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd128036%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body128046%_)
                                                      '()))
                                          (_%E128012128024%_)))))
                                (_%E128012128024%_)))))
                      (_%E128012128024%_)))))
          (_%E128011128048%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx127979%_)
        (let* ((_%e127980127987%_ _%stx127979%_)
               (_%E127982127991%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127980127987%_)))
               (_%E127981128005%_
                (lambda ()
                  (if (gx#stx-pair? _%e127980127987%_)
                      (let ((_%e127983127995%_
                             (gx#syntax-e _%e127980127987%_)))
                        (let ((_%hd127984127998%_ (##car _%e127983127995%_))
                              (_%tl127985128000%_ (##cdr _%e127983127995%_)))
                          (let ((_%clauses128003%_ _%tl127985128000%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses128003%_)))))
                      (_%E127982127991%_)))))
          (_%E127981128005%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx127914%_ _%form127915%_)
        (let* ((_%e127916127929%_ _%stx127914%_)
               (_%E127918127933%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127916127929%_)))
               (_%E127917127965%_
                (lambda ()
                  (if (gx#stx-pair? _%e127916127929%_)
                      (let ((_%e127919127937%_
                             (gx#syntax-e _%e127916127929%_)))
                        (let ((_%hd127920127940%_ (##car _%e127919127937%_))
                              (_%tl127921127942%_ (##cdr _%e127919127937%_)))
                          (if (gx#stx-pair? _%tl127921127942%_)
                              (let ((_%e127922127945%_
                                     (gx#syntax-e _%tl127921127942%_)))
                                (let ((_%hd127923127948%_
                                       (##car _%e127922127945%_))
                                      (_%tl127924127950%_
                                       (##cdr _%e127922127945%_)))
                                  (let ((_%hd127953%_ _%hd127923127948%_))
                                    (if (gx#stx-pair? _%tl127924127950%_)
                                        (let ((_%e127925127955%_
                                               (gx#syntax-e
                                                _%tl127924127950%_)))
                                          (let ((_%hd127926127958%_
                                                 (##car _%e127925127955%_))
                                                (_%tl127927127960%_
                                                 (##cdr _%e127925127955%_)))
                                            (let ((_%body127963%_
                                                   _%hd127926127958%_))
                                              (if (gx#stx-null?
                                                   _%tl127927127960%_)
                                                  (cons _%form127915%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd127953%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body127963%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127918127933%_)))))
                                        (_%E127918127933%_)))))
                              (_%E127918127933%_))))
                      (_%E127918127933%_)))))
          (_%E127917127965%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx127972%_)
        (let ((_%form127974%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx127972%_ _%form127974%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g128801_
        (let ((_g128800_ (##length _g128801_)))
          (cond ((##fx= _g128800_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g128801_))
                ((##fx= _g128800_ 2)
                 (apply gx#core-compile-top-let-values%__% _g128801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g128801_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx127911%_)
        (gx#core-compile-top-let-values%__% _%stx127911%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx127909%_)
        (gx#core-compile-top-let-values%__% _%stx127909%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx127868%_)
        (let* ((_%e127869127879%_ _%stx127868%_)
               (_%E127871127883%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127869127879%_)))
               (_%E127870127905%_
                (lambda ()
                  (if (gx#stx-pair? _%e127869127879%_)
                      (let ((_%e127872127887%_
                             (gx#syntax-e _%e127869127879%_)))
                        (let ((_%hd127873127890%_ (##car _%e127872127887%_))
                              (_%tl127874127892%_ (##cdr _%e127872127887%_)))
                          (if (gx#stx-pair? _%tl127874127892%_)
                              (let ((_%e127875127895%_
                                     (gx#syntax-e _%tl127874127892%_)))
                                (let ((_%hd127876127898%_
                                       (##car _%e127875127895%_))
                                      (_%tl127877127900%_
                                       (##cdr _%e127875127895%_)))
                                  (let ((_%e127903%_ _%hd127876127898%_))
                                    (if (gx#stx-null? _%tl127877127900%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e127903%_)
                                                    '()))
                                        (_%E127871127883%_)))))
                              (_%E127871127883%_))))
                      (_%E127871127883%_)))))
          (_%E127870127905%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx127827%_)
        (let* ((_%e127828127838%_ _%stx127827%_)
               (_%E127830127842%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127828127838%_)))
               (_%E127829127864%_
                (lambda ()
                  (if (gx#stx-pair? _%e127828127838%_)
                      (let ((_%e127831127846%_
                             (gx#syntax-e _%e127828127838%_)))
                        (let ((_%hd127832127849%_ (##car _%e127831127846%_))
                              (_%tl127833127851%_ (##cdr _%e127831127846%_)))
                          (if (gx#stx-pair? _%tl127833127851%_)
                              (let ((_%e127834127854%_
                                     (gx#syntax-e _%tl127833127851%_)))
                                (let ((_%hd127835127857%_
                                       (##car _%e127834127854%_))
                                      (_%tl127836127859%_
                                       (##cdr _%e127834127854%_)))
                                  (let ((_%e127862%_ _%hd127835127857%_))
                                    (if (gx#stx-null? _%tl127836127859%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e127862%_)
                                                    '()))
                                        (_%E127830127842%_)))))
                              (_%E127830127842%_))))
                      (_%E127830127842%_)))))
          (_%E127829127864%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx127784%_)
        (let* ((_%e127785127795%_ _%stx127784%_)
               (_%E127787127799%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127785127795%_)))
               (_%E127786127823%_
                (lambda ()
                  (if (gx#stx-pair? _%e127785127795%_)
                      (let ((_%e127788127803%_
                             (gx#syntax-e _%e127785127795%_)))
                        (let ((_%hd127789127806%_ (##car _%e127788127803%_))
                              (_%tl127790127808%_ (##cdr _%e127788127803%_)))
                          (if (gx#stx-pair? _%tl127790127808%_)
                              (let ((_%e127791127811%_
                                     (gx#syntax-e _%tl127790127808%_)))
                                (let ((_%hd127792127814%_
                                       (##car _%e127791127811%_))
                                      (_%tl127793127816%_
                                       (##cdr _%e127791127811%_)))
                                  (let* ((_%rator127819%_ _%hd127792127814%_)
                                         (_%args127821%_ _%tl127793127816%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator127819%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args127821%_))))))
                              (_%E127787127799%_))))
                      (_%E127787127799%_)))))
          (_%E127786127823%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx127717%_)
        (let* ((_%e127718127734%_ _%stx127717%_)
               (_%E127720127738%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127718127734%_)))
               (_%E127719127780%_
                (lambda ()
                  (if (gx#stx-pair? _%e127718127734%_)
                      (let ((_%e127721127742%_
                             (gx#syntax-e _%e127718127734%_)))
                        (let ((_%hd127722127745%_ (##car _%e127721127742%_))
                              (_%tl127723127747%_ (##cdr _%e127721127742%_)))
                          (if (gx#stx-pair? _%tl127723127747%_)
                              (let ((_%e127724127750%_
                                     (gx#syntax-e _%tl127723127747%_)))
                                (let ((_%hd127725127753%_
                                       (##car _%e127724127750%_))
                                      (_%tl127726127755%_
                                       (##cdr _%e127724127750%_)))
                                  (let ((_%test127758%_ _%hd127725127753%_))
                                    (if (gx#stx-pair? _%tl127726127755%_)
                                        (let ((_%e127727127760%_
                                               (gx#syntax-e
                                                _%tl127726127755%_)))
                                          (let ((_%hd127728127763%_
                                                 (##car _%e127727127760%_))
                                                (_%tl127729127765%_
                                                 (##cdr _%e127727127760%_)))
                                            (let ((_%K127768%_
                                                   _%hd127728127763%_))
                                              (if (gx#stx-pair?
                                                   _%tl127729127765%_)
                                                  (let ((_%e127730127770%_
                                                         (gx#syntax-e
                                                          _%tl127729127765%_)))
                                                    (let ((_%hd127731127773%_
                                                           (##car _%e127730127770%_))
                                                          (_%tl127732127775%_
                                                           (##cdr _%e127730127770%_)))
                                                      (let ((_%E127778%_
                                                             _%hd127731127773%_))
                                                        (if (gx#stx-null?
                                                             _%tl127732127775%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test127758%_)
                                (cons (gx#core-compile-top-syntax _%K127768%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E127778%_)
                                            '()))))
                    (_%E127720127738%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127720127738%_)))))
                                        (_%E127720127738%_)))))
                              (_%E127720127738%_))))
                      (_%E127720127738%_)))))
          (_%E127719127780%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx127676%_)
        (let* ((_%e127677127687%_ _%stx127676%_)
               (_%E127679127691%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127677127687%_)))
               (_%E127678127713%_
                (lambda ()
                  (if (gx#stx-pair? _%e127677127687%_)
                      (let ((_%e127680127695%_
                             (gx#syntax-e _%e127677127687%_)))
                        (let ((_%hd127681127698%_ (##car _%e127680127695%_))
                              (_%tl127682127700%_ (##cdr _%e127680127695%_)))
                          (if (gx#stx-pair? _%tl127682127700%_)
                              (let ((_%e127683127703%_
                                     (gx#syntax-e _%tl127682127700%_)))
                                (let ((_%hd127684127706%_
                                       (##car _%e127683127703%_))
                                      (_%tl127685127708%_
                                       (##cdr _%e127683127703%_)))
                                  (let ((_%id127711%_ _%hd127684127706%_))
                                    (if (gx#stx-null? _%tl127685127708%_)
                                        (if (gx#identifier? _%id127711%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id127711%_)
                                                        '()))
                                            (_%E127679127691%_))
                                        (_%E127679127691%_)))))
                              (_%E127679127691%_))))
                      (_%E127679127691%_)))))
          (_%E127678127713%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx127622%_)
        (let* ((_%e127623127636%_ _%stx127622%_)
               (_%E127625127640%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127623127636%_)))
               (_%E127624127672%_
                (lambda ()
                  (if (gx#stx-pair? _%e127623127636%_)
                      (let ((_%e127626127644%_
                             (gx#syntax-e _%e127623127636%_)))
                        (let ((_%hd127627127647%_ (##car _%e127626127644%_))
                              (_%tl127628127649%_ (##cdr _%e127626127644%_)))
                          (if (gx#stx-pair? _%tl127628127649%_)
                              (let ((_%e127629127652%_
                                     (gx#syntax-e _%tl127628127649%_)))
                                (let ((_%hd127630127655%_
                                       (##car _%e127629127652%_))
                                      (_%tl127631127657%_
                                       (##cdr _%e127629127652%_)))
                                  (let ((_%id127660%_ _%hd127630127655%_))
                                    (if (gx#stx-pair? _%tl127631127657%_)
                                        (let ((_%e127632127662%_
                                               (gx#syntax-e
                                                _%tl127631127657%_)))
                                          (let ((_%hd127633127665%_
                                                 (##car _%e127632127662%_))
                                                (_%tl127634127667%_
                                                 (##cdr _%e127632127662%_)))
                                            (let ((_%expr127670%_
                                                   _%hd127633127665%_))
                                              (if (gx#stx-null?
                                                   _%tl127634127667%_)
                                                  (if (gx#identifier?
                                                       _%id127660%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id127660%_)
                          (cons (gx#core-compile-top-syntax _%expr127670%_)
                                '())))
              (_%E127625127640%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127625127640%_)))))
                                        (_%E127625127640%_)))))
                              (_%E127625127640%_))))
                      (_%E127625127640%_)))))
          (_%E127624127672%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id127616%_)
        (let ((_%$e127618%_ (gx#resolve-identifier__0 _%id127616%_)))
          (if _%$e127618%_
              (##unchecked-structure-ref _%$e127618%_ '1 '#f '#f)
              _%id127616%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd127614%_)
        (if (gx#identifier? _%hd127614%_)
            (gx#core-compile-top-runtime-ref _%hd127614%_)
            '#f)))))
