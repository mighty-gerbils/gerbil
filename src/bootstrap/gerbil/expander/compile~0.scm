(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1713004411)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx128821%_)
        (let* ((_%e128822128829%_ _%stx128821%_)
               (_%E128824128833%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128822128829%_)))
               (_%E128823128847%_
                (lambda ()
                  (if (gx#stx-pair? _%e128822128829%_)
                      (let ((_%e128825128837%_
                             (gx#syntax-e _%e128822128829%_)))
                        (let ((_%hd128826128840%_ (##car _%e128825128837%_))
                              (_%tl128827128842%_ (##cdr _%e128825128837%_)))
                          (let* ((_%form128845%_ _%hd128826128840%_)
                                 (__self128850
                                  (gx#syntax-local-e__0 _%form128845%_))
                                 (__method128851
                                  (__method-ref
                                   __self128850
                                   'compile-top-syntax)))
                            (if __method128851
                                (__method128851 __self128850 _%stx128821%_)
                                (begin
                                  (error '"Missing method"
                                         __self128850
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E128824128833%_)))))
          (_%E128823128847%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127664128767%_ _%stx128769%_)
        (let* ((_%self128771%_ _%self127664128767%_)
               (_%self128773%_ _%self128771%_)
               (_%self128782128790%_ _%self128773%_)
               (_%E128784128794%_
                (lambda ()
                  (error '"No clause matching"
                         _%self128782128790%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K128785128807%_
                (lambda (_%K128797%_)
                  (let ((_%$e128799%_ (gx#stx-source _%stx128769%_)))
                    (if _%$e128799%_
                        ((lambda (_%g128801128803%_)
                           (gx#stx-wrap-source
                            (_%K128797%_ _%stx128769%_)
                            _%g128801128803%_))
                         _%$e128799%_)
                        (_%K128797%_ _%stx128769%_)))))
               (_%e128786128810%_
                (##unchecked-structure-ref _%self128782128790%_ '1 '#f '#f))
               (_%e128787128813%_
                (##unchecked-structure-ref _%self128782128790%_ '2 '#f '#f))
               (_%e128788128816%_
                (##unchecked-structure-ref _%self128782128790%_ '3 '#f '#f))
               (_%K128819%_ _%e128788128816%_))
          (_%K128785128807%_ _%K128819%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx128641%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx128641%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx128611%_)
        (let* ((_%e128612128619%_ _%stx128611%_)
               (_%E128614128623%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128612128619%_)))
               (_%E128613128637%_
                (lambda ()
                  (if (gx#stx-pair? _%e128612128619%_)
                      (let ((_%e128615128627%_
                             (gx#syntax-e _%e128612128619%_)))
                        (let ((_%hd128616128630%_ (##car _%e128615128627%_))
                              (_%tl128617128632%_ (##cdr _%e128615128627%_)))
                          (let ((_%body128635%_ _%tl128617128632%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body128635%_)))))
                      (_%E128614128623%_)))))
          (_%E128613128637%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx128580%_)
        (let* ((_%e128581128588%_ _%stx128580%_)
               (_%E128583128592%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128581128588%_)))
               (_%E128582128607%_
                (lambda ()
                  (if (gx#stx-pair? _%e128581128588%_)
                      (let ((_%e128584128596%_
                             (gx#syntax-e _%e128581128588%_)))
                        (let ((_%hd128585128599%_ (##car _%e128584128596%_))
                              (_%tl128586128601%_ (##cdr _%e128584128596%_)))
                          (let ((_%body128604%_ _%tl128586128601%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body128604%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E128583128592%_)))))
          (_%E128582128607%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx128550%_)
        (let* ((_%e128551128558%_ _%stx128550%_)
               (_%E128553128562%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128551128558%_)))
               (_%E128552128576%_
                (lambda ()
                  (if (gx#stx-pair? _%e128551128558%_)
                      (let ((_%e128554128566%_
                             (gx#syntax-e _%e128551128558%_)))
                        (let ((_%hd128555128569%_ (##car _%e128554128566%_))
                              (_%tl128556128571%_ (##cdr _%e128554128566%_)))
                          (let ((_%body128574%_ _%tl128556128571%_))
                            (cons '%#begin-foreign _%body128574%_))))
                      (_%E128553128562%_)))))
          (_%E128552128576%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx128496%_)
        (let* ((_%e128497128510%_ _%stx128496%_)
               (_%E128499128514%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128497128510%_)))
               (_%E128498128546%_
                (lambda ()
                  (if (gx#stx-pair? _%e128497128510%_)
                      (let ((_%e128500128518%_
                             (gx#syntax-e _%e128497128510%_)))
                        (let ((_%hd128501128521%_ (##car _%e128500128518%_))
                              (_%tl128502128523%_ (##cdr _%e128500128518%_)))
                          (if (gx#stx-pair? _%tl128502128523%_)
                              (let ((_%e128503128526%_
                                     (gx#syntax-e _%tl128502128523%_)))
                                (let ((_%hd128504128529%_
                                       (##car _%e128503128526%_))
                                      (_%tl128505128531%_
                                       (##cdr _%e128503128526%_)))
                                  (let ((_%ann128534%_ _%hd128504128529%_))
                                    (if (gx#stx-pair? _%tl128505128531%_)
                                        (let ((_%e128506128536%_
                                               (gx#syntax-e
                                                _%tl128505128531%_)))
                                          (let ((_%hd128507128539%_
                                                 (##car _%e128506128536%_))
                                                (_%tl128508128541%_
                                                 (##cdr _%e128506128536%_)))
                                            (let ((_%expr128544%_
                                                   _%hd128507128539%_))
                                              (if (gx#stx-null?
                                                   _%tl128508128541%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr128544%_)
                                                  (_%E128499128514%_)))))
                                        (_%E128499128514%_)))))
                              (_%E128499128514%_))))
                      (_%E128499128514%_)))))
          (_%E128498128546%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx128466%_)
        (let* ((_%e128467128474%_ _%stx128466%_)
               (_%E128469128478%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128467128474%_)))
               (_%E128468128492%_
                (lambda ()
                  (if (gx#stx-pair? _%e128467128474%_)
                      (let ((_%e128470128482%_
                             (gx#syntax-e _%e128467128474%_)))
                        (let ((_%hd128471128485%_ (##car _%e128470128482%_))
                              (_%tl128472128487%_ (##cdr _%e128470128482%_)))
                          (let ((_%body128490%_ _%tl128472128487%_))
                            (cons '%#import _%body128490%_))))
                      (_%E128469128478%_)))))
          (_%E128468128492%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx128423%_)
        (let* ((_%e128424128434%_ _%stx128423%_)
               (_%E128426128438%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128424128434%_)))
               (_%E128425128462%_
                (lambda ()
                  (if (gx#stx-pair? _%e128424128434%_)
                      (let ((_%e128427128442%_
                             (gx#syntax-e _%e128424128434%_)))
                        (let ((_%hd128428128445%_ (##car _%e128427128442%_))
                              (_%tl128429128447%_ (##cdr _%e128427128442%_)))
                          (if (gx#stx-pair? _%tl128429128447%_)
                              (let ((_%e128430128450%_
                                     (gx#syntax-e _%tl128429128447%_)))
                                (let ((_%hd128431128453%_
                                       (##car _%e128430128450%_))
                                      (_%tl128432128455%_
                                       (##cdr _%e128430128450%_)))
                                  (let* ((_%hd128458%_ _%hd128431128453%_)
                                         (_%body128460%_ _%tl128432128455%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd128458%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body128460%_))))))
                              (_%E128426128438%_))))
                      (_%E128426128438%_)))))
          (_%E128425128462%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx128393%_)
        (let* ((_%e128394128401%_ _%stx128393%_)
               (_%E128396128405%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128394128401%_)))
               (_%E128395128419%_
                (lambda ()
                  (if (gx#stx-pair? _%e128394128401%_)
                      (let ((_%e128397128409%_
                             (gx#syntax-e _%e128394128401%_)))
                        (let ((_%hd128398128412%_ (##car _%e128397128409%_))
                              (_%tl128399128414%_ (##cdr _%e128397128409%_)))
                          (let ((_%body128417%_ _%tl128399128414%_))
                            (cons '%#export _%body128417%_))))
                      (_%E128396128405%_)))))
          (_%E128395128419%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx128363%_)
        (let* ((_%e128364128371%_ _%stx128363%_)
               (_%E128366128375%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128364128371%_)))
               (_%E128365128389%_
                (lambda ()
                  (if (gx#stx-pair? _%e128364128371%_)
                      (let ((_%e128367128379%_
                             (gx#syntax-e _%e128364128371%_)))
                        (let ((_%hd128368128382%_ (##car _%e128367128379%_))
                              (_%tl128369128384%_ (##cdr _%e128367128379%_)))
                          (let ((_%body128387%_ _%tl128369128384%_))
                            (cons '%#provide _%body128387%_))))
                      (_%E128366128375%_)))))
          (_%E128365128389%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx128333%_)
        (let* ((_%e128334128341%_ _%stx128333%_)
               (_%E128336128345%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128334128341%_)))
               (_%E128335128359%_
                (lambda ()
                  (if (gx#stx-pair? _%e128334128341%_)
                      (let ((_%e128337128349%_
                             (gx#syntax-e _%e128334128341%_)))
                        (let ((_%hd128338128352%_ (##car _%e128337128349%_))
                              (_%tl128339128354%_ (##cdr _%e128337128349%_)))
                          (let ((_%body128357%_ _%tl128339128354%_))
                            (cons '%#extern _%body128357%_))))
                      (_%E128336128345%_)))))
          (_%E128335128359%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx128279%_)
        (let* ((_%e128280128293%_ _%stx128279%_)
               (_%E128282128297%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128280128293%_)))
               (_%E128281128329%_
                (lambda ()
                  (if (gx#stx-pair? _%e128280128293%_)
                      (let ((_%e128283128301%_
                             (gx#syntax-e _%e128280128293%_)))
                        (let ((_%hd128284128304%_ (##car _%e128283128301%_))
                              (_%tl128285128306%_ (##cdr _%e128283128301%_)))
                          (if (gx#stx-pair? _%tl128285128306%_)
                              (let ((_%e128286128309%_
                                     (gx#syntax-e _%tl128285128306%_)))
                                (let ((_%hd128287128312%_
                                       (##car _%e128286128309%_))
                                      (_%tl128288128314%_
                                       (##cdr _%e128286128309%_)))
                                  (let ((_%hd128317%_ _%hd128287128312%_))
                                    (if (gx#stx-pair? _%tl128288128314%_)
                                        (let ((_%e128289128319%_
                                               (gx#syntax-e
                                                _%tl128288128314%_)))
                                          (let ((_%hd128290128322%_
                                                 (##car _%e128289128319%_))
                                                (_%tl128291128324%_
                                                 (##cdr _%e128289128319%_)))
                                            (let ((_%expr128327%_
                                                   _%hd128290128322%_))
                                              (if (gx#stx-null?
                                                   _%tl128291128324%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd128317%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr128327%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128282128297%_)))))
                                        (_%E128282128297%_)))))
                              (_%E128282128297%_))))
                      (_%E128282128297%_)))))
          (_%E128281128329%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx128224%_)
        (let* ((_%e128225128238%_ _%stx128224%_)
               (_%E128227128242%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128225128238%_)))
               (_%E128226128275%_
                (lambda ()
                  (if (gx#stx-pair? _%e128225128238%_)
                      (let ((_%e128228128246%_
                             (gx#syntax-e _%e128225128238%_)))
                        (let ((_%hd128229128249%_ (##car _%e128228128246%_))
                              (_%tl128230128251%_ (##cdr _%e128228128246%_)))
                          (if (gx#stx-pair? _%tl128230128251%_)
                              (let ((_%e128231128254%_
                                     (gx#syntax-e _%tl128230128251%_)))
                                (let ((_%hd128232128257%_
                                       (##car _%e128231128254%_))
                                      (_%tl128233128259%_
                                       (##cdr _%e128231128254%_)))
                                  (let ((_%hd128262%_ _%hd128232128257%_))
                                    (if (gx#stx-pair? _%tl128233128259%_)
                                        (let ((_%e128234128264%_
                                               (gx#syntax-e
                                                _%tl128233128259%_)))
                                          (let ((_%hd128235128267%_
                                                 (##car _%e128234128264%_))
                                                (_%tl128236128269%_
                                                 (##cdr _%e128234128264%_)))
                                            (let ((_%expr128272%_
                                                   _%hd128235128267%_))
                                              (if (gx#stx-null?
                                                   _%tl128236128269%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd128262%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr128272%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128227128242%_)))))
                                        (_%E128227128242%_)))))
                              (_%E128227128242%_))))
                      (_%E128227128242%_)))))
          (_%E128226128275%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx128194%_)
        (let* ((_%e128195128202%_ _%stx128194%_)
               (_%E128197128206%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128195128202%_)))
               (_%E128196128220%_
                (lambda ()
                  (if (gx#stx-pair? _%e128195128202%_)
                      (let ((_%e128198128210%_
                             (gx#syntax-e _%e128195128202%_)))
                        (let ((_%hd128199128213%_ (##car _%e128198128210%_))
                              (_%tl128200128215%_ (##cdr _%e128198128210%_)))
                          (let ((_%body128218%_ _%tl128200128215%_))
                            (cons '%#define-alias _%body128218%_))))
                      (_%E128197128206%_)))))
          (_%E128196128220%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx128164%_)
        (let* ((_%e128165128172%_ _%stx128164%_)
               (_%E128167128176%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128165128172%_)))
               (_%E128166128190%_
                (lambda ()
                  (if (gx#stx-pair? _%e128165128172%_)
                      (let ((_%e128168128180%_
                             (gx#syntax-e _%e128165128172%_)))
                        (let ((_%hd128169128183%_ (##car _%e128168128180%_))
                              (_%tl128170128185%_ (##cdr _%e128168128180%_)))
                          (let ((_%body128188%_ _%tl128170128185%_))
                            (cons '%#define-runtime _%body128188%_))))
                      (_%E128167128176%_)))))
          (_%E128166128190%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx128134%_)
        (let* ((_%e128135128142%_ _%stx128134%_)
               (_%E128137128146%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128135128142%_)))
               (_%E128136128160%_
                (lambda ()
                  (if (gx#stx-pair? _%e128135128142%_)
                      (let ((_%e128138128150%_
                             (gx#syntax-e _%e128135128142%_)))
                        (let ((_%hd128139128153%_ (##car _%e128138128150%_))
                              (_%tl128140128155%_ (##cdr _%e128138128150%_)))
                          (let ((_%decls128158%_ _%tl128140128155%_))
                            (cons '%#declare _%decls128158%_))))
                      (_%E128137128146%_)))))
          (_%E128136128160%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx128104%_)
        (let* ((_%e128105128112%_ _%stx128104%_)
               (_%E128107128116%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128105128112%_)))
               (_%E128106128130%_
                (lambda ()
                  (if (gx#stx-pair? _%e128105128112%_)
                      (let ((_%e128108128120%_
                             (gx#syntax-e _%e128105128112%_)))
                        (let ((_%hd128109128123%_ (##car _%e128108128120%_))
                              (_%tl128110128125%_ (##cdr _%e128108128120%_)))
                          (let ((_%clause128128%_ _%tl128110128125%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause128128%_)))))
                      (_%E128107128116%_)))))
          (_%E128106128130%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx128061%_)
        (let* ((_%e128062128072%_ _%stx128061%_)
               (_%E128064128076%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128062128072%_)))
               (_%E128063128100%_
                (lambda ()
                  (if (gx#stx-pair? _%e128062128072%_)
                      (let ((_%e128065128080%_
                             (gx#syntax-e _%e128062128072%_)))
                        (let ((_%hd128066128083%_ (##car _%e128065128080%_))
                              (_%tl128067128085%_ (##cdr _%e128065128080%_)))
                          (let ((_%hd128088%_ _%hd128066128083%_))
                            (if (gx#stx-pair? _%tl128067128085%_)
                                (let ((_%e128068128090%_
                                       (gx#syntax-e _%tl128067128085%_)))
                                  (let ((_%hd128069128093%_
                                         (##car _%e128068128090%_))
                                        (_%tl128070128095%_
                                         (##cdr _%e128068128090%_)))
                                    (let ((_%body128098%_ _%hd128069128093%_))
                                      (if (gx#stx-null? _%tl128070128095%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd128088%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body128098%_)
                                                      '()))
                                          (_%E128064128076%_)))))
                                (_%E128064128076%_)))))
                      (_%E128064128076%_)))))
          (_%E128063128100%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx128031%_)
        (let* ((_%e128032128039%_ _%stx128031%_)
               (_%E128034128043%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128032128039%_)))
               (_%E128033128057%_
                (lambda ()
                  (if (gx#stx-pair? _%e128032128039%_)
                      (let ((_%e128035128047%_
                             (gx#syntax-e _%e128032128039%_)))
                        (let ((_%hd128036128050%_ (##car _%e128035128047%_))
                              (_%tl128037128052%_ (##cdr _%e128035128047%_)))
                          (let ((_%clauses128055%_ _%tl128037128052%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses128055%_)))))
                      (_%E128034128043%_)))))
          (_%E128033128057%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx127966%_ _%form127967%_)
        (let* ((_%e127968127981%_ _%stx127966%_)
               (_%E127970127985%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127968127981%_)))
               (_%E127969128017%_
                (lambda ()
                  (if (gx#stx-pair? _%e127968127981%_)
                      (let ((_%e127971127989%_
                             (gx#syntax-e _%e127968127981%_)))
                        (let ((_%hd127972127992%_ (##car _%e127971127989%_))
                              (_%tl127973127994%_ (##cdr _%e127971127989%_)))
                          (if (gx#stx-pair? _%tl127973127994%_)
                              (let ((_%e127974127997%_
                                     (gx#syntax-e _%tl127973127994%_)))
                                (let ((_%hd127975128000%_
                                       (##car _%e127974127997%_))
                                      (_%tl127976128002%_
                                       (##cdr _%e127974127997%_)))
                                  (let ((_%hd128005%_ _%hd127975128000%_))
                                    (if (gx#stx-pair? _%tl127976128002%_)
                                        (let ((_%e127977128007%_
                                               (gx#syntax-e
                                                _%tl127976128002%_)))
                                          (let ((_%hd127978128010%_
                                                 (##car _%e127977128007%_))
                                                (_%tl127979128012%_
                                                 (##cdr _%e127977128007%_)))
                                            (let ((_%body128015%_
                                                   _%hd127978128010%_))
                                              (if (gx#stx-null?
                                                   _%tl127979128012%_)
                                                  (cons _%form127967%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd128005%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body128015%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127970127985%_)))))
                                        (_%E127970127985%_)))))
                              (_%E127970127985%_))))
                      (_%E127970127985%_)))))
          (_%E127969128017%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx128024%_)
        (let ((_%form128026%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx128024%_ _%form128026%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g128853_
        (let ((_g128852_ (##length _g128853_)))
          (cond ((##fx= _g128852_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g128853_))
                ((##fx= _g128852_ 2)
                 (apply gx#core-compile-top-let-values%__% _g128853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g128853_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx127963%_)
        (gx#core-compile-top-let-values%__% _%stx127963%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx127961%_)
        (gx#core-compile-top-let-values%__% _%stx127961%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx127920%_)
        (let* ((_%e127921127931%_ _%stx127920%_)
               (_%E127923127935%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127921127931%_)))
               (_%E127922127957%_
                (lambda ()
                  (if (gx#stx-pair? _%e127921127931%_)
                      (let ((_%e127924127939%_
                             (gx#syntax-e _%e127921127931%_)))
                        (let ((_%hd127925127942%_ (##car _%e127924127939%_))
                              (_%tl127926127944%_ (##cdr _%e127924127939%_)))
                          (if (gx#stx-pair? _%tl127926127944%_)
                              (let ((_%e127927127947%_
                                     (gx#syntax-e _%tl127926127944%_)))
                                (let ((_%hd127928127950%_
                                       (##car _%e127927127947%_))
                                      (_%tl127929127952%_
                                       (##cdr _%e127927127947%_)))
                                  (let ((_%e127955%_ _%hd127928127950%_))
                                    (if (gx#stx-null? _%tl127929127952%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e127955%_)
                                                    '()))
                                        (_%E127923127935%_)))))
                              (_%E127923127935%_))))
                      (_%E127923127935%_)))))
          (_%E127922127957%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx127879%_)
        (let* ((_%e127880127890%_ _%stx127879%_)
               (_%E127882127894%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127880127890%_)))
               (_%E127881127916%_
                (lambda ()
                  (if (gx#stx-pair? _%e127880127890%_)
                      (let ((_%e127883127898%_
                             (gx#syntax-e _%e127880127890%_)))
                        (let ((_%hd127884127901%_ (##car _%e127883127898%_))
                              (_%tl127885127903%_ (##cdr _%e127883127898%_)))
                          (if (gx#stx-pair? _%tl127885127903%_)
                              (let ((_%e127886127906%_
                                     (gx#syntax-e _%tl127885127903%_)))
                                (let ((_%hd127887127909%_
                                       (##car _%e127886127906%_))
                                      (_%tl127888127911%_
                                       (##cdr _%e127886127906%_)))
                                  (let ((_%e127914%_ _%hd127887127909%_))
                                    (if (gx#stx-null? _%tl127888127911%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e127914%_)
                                                    '()))
                                        (_%E127882127894%_)))))
                              (_%E127882127894%_))))
                      (_%E127882127894%_)))))
          (_%E127881127916%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx127836%_)
        (let* ((_%e127837127847%_ _%stx127836%_)
               (_%E127839127851%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127837127847%_)))
               (_%E127838127875%_
                (lambda ()
                  (if (gx#stx-pair? _%e127837127847%_)
                      (let ((_%e127840127855%_
                             (gx#syntax-e _%e127837127847%_)))
                        (let ((_%hd127841127858%_ (##car _%e127840127855%_))
                              (_%tl127842127860%_ (##cdr _%e127840127855%_)))
                          (if (gx#stx-pair? _%tl127842127860%_)
                              (let ((_%e127843127863%_
                                     (gx#syntax-e _%tl127842127860%_)))
                                (let ((_%hd127844127866%_
                                       (##car _%e127843127863%_))
                                      (_%tl127845127868%_
                                       (##cdr _%e127843127863%_)))
                                  (let* ((_%rator127871%_ _%hd127844127866%_)
                                         (_%args127873%_ _%tl127845127868%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator127871%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args127873%_))))))
                              (_%E127839127851%_))))
                      (_%E127839127851%_)))))
          (_%E127838127875%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx127769%_)
        (let* ((_%e127770127786%_ _%stx127769%_)
               (_%E127772127790%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127770127786%_)))
               (_%E127771127832%_
                (lambda ()
                  (if (gx#stx-pair? _%e127770127786%_)
                      (let ((_%e127773127794%_
                             (gx#syntax-e _%e127770127786%_)))
                        (let ((_%hd127774127797%_ (##car _%e127773127794%_))
                              (_%tl127775127799%_ (##cdr _%e127773127794%_)))
                          (if (gx#stx-pair? _%tl127775127799%_)
                              (let ((_%e127776127802%_
                                     (gx#syntax-e _%tl127775127799%_)))
                                (let ((_%hd127777127805%_
                                       (##car _%e127776127802%_))
                                      (_%tl127778127807%_
                                       (##cdr _%e127776127802%_)))
                                  (let ((_%test127810%_ _%hd127777127805%_))
                                    (if (gx#stx-pair? _%tl127778127807%_)
                                        (let ((_%e127779127812%_
                                               (gx#syntax-e
                                                _%tl127778127807%_)))
                                          (let ((_%hd127780127815%_
                                                 (##car _%e127779127812%_))
                                                (_%tl127781127817%_
                                                 (##cdr _%e127779127812%_)))
                                            (let ((_%K127820%_
                                                   _%hd127780127815%_))
                                              (if (gx#stx-pair?
                                                   _%tl127781127817%_)
                                                  (let ((_%e127782127822%_
                                                         (gx#syntax-e
                                                          _%tl127781127817%_)))
                                                    (let ((_%hd127783127825%_
                                                           (##car _%e127782127822%_))
                                                          (_%tl127784127827%_
                                                           (##cdr _%e127782127822%_)))
                                                      (let ((_%E127830%_
                                                             _%hd127783127825%_))
                                                        (if (gx#stx-null?
                                                             _%tl127784127827%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test127810%_)
                                (cons (gx#core-compile-top-syntax _%K127820%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E127830%_)
                                            '()))))
                    (_%E127772127790%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127772127790%_)))))
                                        (_%E127772127790%_)))))
                              (_%E127772127790%_))))
                      (_%E127772127790%_)))))
          (_%E127771127832%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx127728%_)
        (let* ((_%e127729127739%_ _%stx127728%_)
               (_%E127731127743%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127729127739%_)))
               (_%E127730127765%_
                (lambda ()
                  (if (gx#stx-pair? _%e127729127739%_)
                      (let ((_%e127732127747%_
                             (gx#syntax-e _%e127729127739%_)))
                        (let ((_%hd127733127750%_ (##car _%e127732127747%_))
                              (_%tl127734127752%_ (##cdr _%e127732127747%_)))
                          (if (gx#stx-pair? _%tl127734127752%_)
                              (let ((_%e127735127755%_
                                     (gx#syntax-e _%tl127734127752%_)))
                                (let ((_%hd127736127758%_
                                       (##car _%e127735127755%_))
                                      (_%tl127737127760%_
                                       (##cdr _%e127735127755%_)))
                                  (let ((_%id127763%_ _%hd127736127758%_))
                                    (if (gx#stx-null? _%tl127737127760%_)
                                        (if (gx#identifier? _%id127763%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id127763%_)
                                                        '()))
                                            (_%E127731127743%_))
                                        (_%E127731127743%_)))))
                              (_%E127731127743%_))))
                      (_%E127731127743%_)))))
          (_%E127730127765%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx127674%_)
        (let* ((_%e127675127688%_ _%stx127674%_)
               (_%E127677127692%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127675127688%_)))
               (_%E127676127724%_
                (lambda ()
                  (if (gx#stx-pair? _%e127675127688%_)
                      (let ((_%e127678127696%_
                             (gx#syntax-e _%e127675127688%_)))
                        (let ((_%hd127679127699%_ (##car _%e127678127696%_))
                              (_%tl127680127701%_ (##cdr _%e127678127696%_)))
                          (if (gx#stx-pair? _%tl127680127701%_)
                              (let ((_%e127681127704%_
                                     (gx#syntax-e _%tl127680127701%_)))
                                (let ((_%hd127682127707%_
                                       (##car _%e127681127704%_))
                                      (_%tl127683127709%_
                                       (##cdr _%e127681127704%_)))
                                  (let ((_%id127712%_ _%hd127682127707%_))
                                    (if (gx#stx-pair? _%tl127683127709%_)
                                        (let ((_%e127684127714%_
                                               (gx#syntax-e
                                                _%tl127683127709%_)))
                                          (let ((_%hd127685127717%_
                                                 (##car _%e127684127714%_))
                                                (_%tl127686127719%_
                                                 (##cdr _%e127684127714%_)))
                                            (let ((_%expr127722%_
                                                   _%hd127685127717%_))
                                              (if (gx#stx-null?
                                                   _%tl127686127719%_)
                                                  (if (gx#identifier?
                                                       _%id127712%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id127712%_)
                          (cons (gx#core-compile-top-syntax _%expr127722%_)
                                '())))
              (_%E127677127692%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127677127692%_)))))
                                        (_%E127677127692%_)))))
                              (_%E127677127692%_))))
                      (_%E127677127692%_)))))
          (_%E127676127724%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id127668%_)
        (let ((_%$e127670%_ (gx#resolve-identifier__0 _%id127668%_)))
          (if _%$e127670%_
              (##unchecked-structure-ref _%$e127670%_ '1 '#f '#f)
              _%id127668%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd127666%_)
        (if (gx#identifier? _%hd127666%_)
            (gx#core-compile-top-runtime-ref _%hd127666%_)
            '#f)))))
