(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1781138356)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx189301%_)
        (let* ((_%$%e189302189309%_ _%stx189301%_)
               (_%$%E189304189313%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189302189309%_)))
               (_%$%E189303189327%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189302189309%_)
                      (let ((_%$%e189305189317%_
                             (gx#syntax-e _%$%e189302189309%_)))
                        (let ((_%$%hd189306189320%_
                               (##car _%$%e189305189317%_))
                              (_%$%tl189307189322%_
                               (##cdr _%$%e189305189317%_)))
                          (let* ((_%form189325%_ _%$%hd189306189320%_)
                                 (__self189330
                                  (gx#syntax-local-e__0 _%form189325%_))
                                 (__method189331
                                  (__method-ref
                                   __self189330
                                   'compile-top-syntax)))
                            (if __method189331
                                (__method189331 __self189330 _%stx189301%_)
                                (begin
                                  (error '"Missing method"
                                         __self189330
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%$%E189304189313%_)))))
          (_%$%E189303189327%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self189250%_ _%stx189251%_)
        (let* ((_%self189254%_ _%self189250%_)
               (_%$%self189263189271%_ _%self189254%_)
               (_%$%E189265189274%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self189263189271%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%$%K189266189287%_
                (lambda (_%K189277%_)
                  (let ((_%$e189279%_ (gx#stx-source _%stx189251%_)))
                    (if _%$e189279%_
                        (gx#stx-wrap-source
                         (_%K189277%_ _%stx189251%_)
                         _%$e189279%_)
                        (_%K189277%_ _%stx189251%_)))))
               (_%$%e189267189290%_
                (##unchecked-structure-ref _%$%self189263189271%_ '1 '#f '#f))
               (_%$%e189268189293%_
                (##unchecked-structure-ref _%$%self189263189271%_ '2 '#f '#f))
               (_%$%e189269189296%_
                (##unchecked-structure-ref _%$%self189263189271%_ '3 '#f '#f))
               (_%K189299%_ _%$%e189269189296%_))
          (_%$%K189266189287%_ _%K189299%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx189124%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx189124%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx189094%_)
        (let* ((_%$%e189095189102%_ _%stx189094%_)
               (_%$%E189097189106%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189095189102%_)))
               (_%$%E189096189120%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189095189102%_)
                      (let ((_%$%e189098189110%_
                             (gx#syntax-e _%$%e189095189102%_)))
                        (let ((_%$%hd189099189113%_
                               (##car _%$%e189098189110%_))
                              (_%$%tl189100189115%_
                               (##cdr _%$%e189098189110%_)))
                          (let ((_%body189118%_ _%$%tl189100189115%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body189118%_)))))
                      (_%$%E189097189106%_)))))
          (_%$%E189096189120%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx189063%_)
        (let* ((_%$%e189064189071%_ _%stx189063%_)
               (_%$%E189066189075%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189064189071%_)))
               (_%$%E189065189090%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189064189071%_)
                      (let ((_%$%e189067189079%_
                             (gx#syntax-e _%$%e189064189071%_)))
                        (let ((_%$%hd189068189082%_
                               (##car _%$%e189067189079%_))
                              (_%$%tl189069189084%_
                               (##cdr _%$%e189067189079%_)))
                          (let ((_%body189087%_ _%$%tl189069189084%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body189087%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%$%E189066189075%_)))))
          (_%$%E189065189090%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx189033%_)
        (let* ((_%$%e189034189041%_ _%stx189033%_)
               (_%$%E189036189045%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189034189041%_)))
               (_%$%E189035189059%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189034189041%_)
                      (let ((_%$%e189037189049%_
                             (gx#syntax-e _%$%e189034189041%_)))
                        (let ((_%$%hd189038189052%_
                               (##car _%$%e189037189049%_))
                              (_%$%tl189039189054%_
                               (##cdr _%$%e189037189049%_)))
                          (let ((_%body189057%_ _%$%tl189039189054%_))
                            (cons '%#begin-foreign _%body189057%_))))
                      (_%$%E189036189045%_)))))
          (_%$%E189035189059%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx188979%_)
        (let* ((_%$%e188980188993%_ _%stx188979%_)
               (_%$%E188982188997%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188980188993%_)))
               (_%$%E188981189029%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188980188993%_)
                      (let ((_%$%e188983189001%_
                             (gx#syntax-e _%$%e188980188993%_)))
                        (let ((_%$%hd188984189004%_
                               (##car _%$%e188983189001%_))
                              (_%$%tl188985189006%_
                               (##cdr _%$%e188983189001%_)))
                          (if (gx#stx-pair? _%$%tl188985189006%_)
                              (let ((_%$%e188986189009%_
                                     (gx#syntax-e _%$%tl188985189006%_)))
                                (let ((_%$%hd188987189012%_
                                       (##car _%$%e188986189009%_))
                                      (_%$%tl188988189014%_
                                       (##cdr _%$%e188986189009%_)))
                                  (let ((_%ann189017%_ _%$%hd188987189012%_))
                                    (if (gx#stx-pair? _%$%tl188988189014%_)
                                        (let ((_%$%e188989189019%_
                                               (gx#syntax-e
                                                _%$%tl188988189014%_)))
                                          (let ((_%$%hd188990189022%_
                                                 (##car _%$%e188989189019%_))
                                                (_%$%tl188991189024%_
                                                 (##cdr _%$%e188989189019%_)))
                                            (let ((_%expr189027%_
                                                   _%$%hd188990189022%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188991189024%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr189027%_)
                                                  (_%$%E188982188997%_)))))
                                        (_%$%E188982188997%_)))))
                              (_%$%E188982188997%_))))
                      (_%$%E188982188997%_)))))
          (_%$%E188981189029%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx188949%_)
        (let* ((_%$%e188950188957%_ _%stx188949%_)
               (_%$%E188952188961%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188950188957%_)))
               (_%$%E188951188975%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188950188957%_)
                      (let ((_%$%e188953188965%_
                             (gx#syntax-e _%$%e188950188957%_)))
                        (let ((_%$%hd188954188968%_
                               (##car _%$%e188953188965%_))
                              (_%$%tl188955188970%_
                               (##cdr _%$%e188953188965%_)))
                          (let ((_%body188973%_ _%$%tl188955188970%_))
                            (cons '%#import _%body188973%_))))
                      (_%$%E188952188961%_)))))
          (_%$%E188951188975%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx188906%_)
        (let* ((_%$%e188907188917%_ _%stx188906%_)
               (_%$%E188909188921%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188907188917%_)))
               (_%$%E188908188945%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188907188917%_)
                      (let ((_%$%e188910188925%_
                             (gx#syntax-e _%$%e188907188917%_)))
                        (let ((_%$%hd188911188928%_
                               (##car _%$%e188910188925%_))
                              (_%$%tl188912188930%_
                               (##cdr _%$%e188910188925%_)))
                          (if (gx#stx-pair? _%$%tl188912188930%_)
                              (let ((_%$%e188913188933%_
                                     (gx#syntax-e _%$%tl188912188930%_)))
                                (let ((_%$%hd188914188936%_
                                       (##car _%$%e188913188933%_))
                                      (_%$%tl188915188938%_
                                       (##cdr _%$%e188913188933%_)))
                                  (let* ((_%hd188941%_ _%$%hd188914188936%_)
                                         (_%body188943%_ _%$%tl188915188938%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd188941%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body188943%_))))))
                              (_%$%E188909188921%_))))
                      (_%$%E188909188921%_)))))
          (_%$%E188908188945%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx188876%_)
        (let* ((_%$%e188877188884%_ _%stx188876%_)
               (_%$%E188879188888%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188877188884%_)))
               (_%$%E188878188902%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188877188884%_)
                      (let ((_%$%e188880188892%_
                             (gx#syntax-e _%$%e188877188884%_)))
                        (let ((_%$%hd188881188895%_
                               (##car _%$%e188880188892%_))
                              (_%$%tl188882188897%_
                               (##cdr _%$%e188880188892%_)))
                          (let ((_%body188900%_ _%$%tl188882188897%_))
                            (cons '%#export _%body188900%_))))
                      (_%$%E188879188888%_)))))
          (_%$%E188878188902%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx188846%_)
        (let* ((_%$%e188847188854%_ _%stx188846%_)
               (_%$%E188849188858%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188847188854%_)))
               (_%$%E188848188872%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188847188854%_)
                      (let ((_%$%e188850188862%_
                             (gx#syntax-e _%$%e188847188854%_)))
                        (let ((_%$%hd188851188865%_
                               (##car _%$%e188850188862%_))
                              (_%$%tl188852188867%_
                               (##cdr _%$%e188850188862%_)))
                          (let ((_%body188870%_ _%$%tl188852188867%_))
                            (cons '%#provide _%body188870%_))))
                      (_%$%E188849188858%_)))))
          (_%$%E188848188872%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx188816%_)
        (let* ((_%$%e188817188824%_ _%stx188816%_)
               (_%$%E188819188828%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188817188824%_)))
               (_%$%E188818188842%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188817188824%_)
                      (let ((_%$%e188820188832%_
                             (gx#syntax-e _%$%e188817188824%_)))
                        (let ((_%$%hd188821188835%_
                               (##car _%$%e188820188832%_))
                              (_%$%tl188822188837%_
                               (##cdr _%$%e188820188832%_)))
                          (let ((_%body188840%_ _%$%tl188822188837%_))
                            (cons '%#extern _%body188840%_))))
                      (_%$%E188819188828%_)))))
          (_%$%E188818188842%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx188762%_)
        (let* ((_%$%e188763188776%_ _%stx188762%_)
               (_%$%E188765188780%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188763188776%_)))
               (_%$%E188764188812%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188763188776%_)
                      (let ((_%$%e188766188784%_
                             (gx#syntax-e _%$%e188763188776%_)))
                        (let ((_%$%hd188767188787%_
                               (##car _%$%e188766188784%_))
                              (_%$%tl188768188789%_
                               (##cdr _%$%e188766188784%_)))
                          (if (gx#stx-pair? _%$%tl188768188789%_)
                              (let ((_%$%e188769188792%_
                                     (gx#syntax-e _%$%tl188768188789%_)))
                                (let ((_%$%hd188770188795%_
                                       (##car _%$%e188769188792%_))
                                      (_%$%tl188771188797%_
                                       (##cdr _%$%e188769188792%_)))
                                  (let ((_%hd188800%_ _%$%hd188770188795%_))
                                    (if (gx#stx-pair? _%$%tl188771188797%_)
                                        (let ((_%$%e188772188802%_
                                               (gx#syntax-e
                                                _%$%tl188771188797%_)))
                                          (let ((_%$%hd188773188805%_
                                                 (##car _%$%e188772188802%_))
                                                (_%$%tl188774188807%_
                                                 (##cdr _%$%e188772188802%_)))
                                            (let ((_%expr188810%_
                                                   _%$%hd188773188805%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188774188807%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd188800%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr188810%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E188765188780%_)))))
                                        (_%$%E188765188780%_)))))
                              (_%$%E188765188780%_))))
                      (_%$%E188765188780%_)))))
          (_%$%E188764188812%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx188707%_)
        (let* ((_%$%e188708188721%_ _%stx188707%_)
               (_%$%E188710188725%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188708188721%_)))
               (_%$%E188709188758%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188708188721%_)
                      (let ((_%$%e188711188729%_
                             (gx#syntax-e _%$%e188708188721%_)))
                        (let ((_%$%hd188712188732%_
                               (##car _%$%e188711188729%_))
                              (_%$%tl188713188734%_
                               (##cdr _%$%e188711188729%_)))
                          (if (gx#stx-pair? _%$%tl188713188734%_)
                              (let ((_%$%e188714188737%_
                                     (gx#syntax-e _%$%tl188713188734%_)))
                                (let ((_%$%hd188715188740%_
                                       (##car _%$%e188714188737%_))
                                      (_%$%tl188716188742%_
                                       (##cdr _%$%e188714188737%_)))
                                  (let ((_%hd188745%_ _%$%hd188715188740%_))
                                    (if (gx#stx-pair? _%$%tl188716188742%_)
                                        (let ((_%$%e188717188747%_
                                               (gx#syntax-e
                                                _%$%tl188716188742%_)))
                                          (let ((_%$%hd188718188750%_
                                                 (##car _%$%e188717188747%_))
                                                (_%$%tl188719188752%_
                                                 (##cdr _%$%e188717188747%_)))
                                            (let ((_%expr188755%_
                                                   _%$%hd188718188750%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188719188752%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd188745%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr188755%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E188710188725%_)))))
                                        (_%$%E188710188725%_)))))
                              (_%$%E188710188725%_))))
                      (_%$%E188710188725%_)))))
          (_%$%E188709188758%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx188677%_)
        (let* ((_%$%e188678188685%_ _%stx188677%_)
               (_%$%E188680188689%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188678188685%_)))
               (_%$%E188679188703%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188678188685%_)
                      (let ((_%$%e188681188693%_
                             (gx#syntax-e _%$%e188678188685%_)))
                        (let ((_%$%hd188682188696%_
                               (##car _%$%e188681188693%_))
                              (_%$%tl188683188698%_
                               (##cdr _%$%e188681188693%_)))
                          (let ((_%body188701%_ _%$%tl188683188698%_))
                            (cons '%#define-alias _%body188701%_))))
                      (_%$%E188680188689%_)))))
          (_%$%E188679188703%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx188647%_)
        (let* ((_%$%e188648188655%_ _%stx188647%_)
               (_%$%E188650188659%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188648188655%_)))
               (_%$%E188649188673%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188648188655%_)
                      (let ((_%$%e188651188663%_
                             (gx#syntax-e _%$%e188648188655%_)))
                        (let ((_%$%hd188652188666%_
                               (##car _%$%e188651188663%_))
                              (_%$%tl188653188668%_
                               (##cdr _%$%e188651188663%_)))
                          (let ((_%body188671%_ _%$%tl188653188668%_))
                            (cons '%#define-runtime _%body188671%_))))
                      (_%$%E188650188659%_)))))
          (_%$%E188649188673%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx188617%_)
        (let* ((_%$%e188618188625%_ _%stx188617%_)
               (_%$%E188620188629%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188618188625%_)))
               (_%$%E188619188643%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188618188625%_)
                      (let ((_%$%e188621188633%_
                             (gx#syntax-e _%$%e188618188625%_)))
                        (let ((_%$%hd188622188636%_
                               (##car _%$%e188621188633%_))
                              (_%$%tl188623188638%_
                               (##cdr _%$%e188621188633%_)))
                          (let ((_%decls188641%_ _%$%tl188623188638%_))
                            (cons '%#declare _%decls188641%_))))
                      (_%$%E188620188629%_)))))
          (_%$%E188619188643%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx188587%_)
        (let* ((_%$%e188588188595%_ _%stx188587%_)
               (_%$%E188590188599%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188588188595%_)))
               (_%$%E188589188613%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188588188595%_)
                      (let ((_%$%e188591188603%_
                             (gx#syntax-e _%$%e188588188595%_)))
                        (let ((_%$%hd188592188606%_
                               (##car _%$%e188591188603%_))
                              (_%$%tl188593188608%_
                               (##cdr _%$%e188591188603%_)))
                          (let ((_%clause188611%_ _%$%tl188593188608%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause188611%_)))))
                      (_%$%E188590188599%_)))))
          (_%$%E188589188613%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx188544%_)
        (let* ((_%$%e188545188555%_ _%stx188544%_)
               (_%$%E188547188559%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188545188555%_)))
               (_%$%E188546188583%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188545188555%_)
                      (let ((_%$%e188548188563%_
                             (gx#syntax-e _%$%e188545188555%_)))
                        (let ((_%$%hd188549188566%_
                               (##car _%$%e188548188563%_))
                              (_%$%tl188550188568%_
                               (##cdr _%$%e188548188563%_)))
                          (let ((_%hd188571%_ _%$%hd188549188566%_))
                            (if (gx#stx-pair? _%$%tl188550188568%_)
                                (let ((_%$%e188551188573%_
                                       (gx#syntax-e _%$%tl188550188568%_)))
                                  (let ((_%$%hd188552188576%_
                                         (##car _%$%e188551188573%_))
                                        (_%$%tl188553188578%_
                                         (##cdr _%$%e188551188573%_)))
                                    (let ((_%body188581%_
                                           _%$%hd188552188576%_))
                                      (if (gx#stx-null? _%$%tl188553188578%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd188571%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body188581%_)
                                                      '()))
                                          (_%$%E188547188559%_)))))
                                (_%$%E188547188559%_)))))
                      (_%$%E188547188559%_)))))
          (_%$%E188546188583%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx188514%_)
        (let* ((_%$%e188515188522%_ _%stx188514%_)
               (_%$%E188517188526%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188515188522%_)))
               (_%$%E188516188540%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188515188522%_)
                      (let ((_%$%e188518188530%_
                             (gx#syntax-e _%$%e188515188522%_)))
                        (let ((_%$%hd188519188533%_
                               (##car _%$%e188518188530%_))
                              (_%$%tl188520188535%_
                               (##cdr _%$%e188518188530%_)))
                          (let ((_%clauses188538%_ _%$%tl188520188535%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses188538%_)))))
                      (_%$%E188517188526%_)))))
          (_%$%E188516188540%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx188449%_ _%form188450%_)
        (let* ((_%$%e188451188464%_ _%stx188449%_)
               (_%$%E188453188468%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188451188464%_)))
               (_%$%E188452188500%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188451188464%_)
                      (let ((_%$%e188454188472%_
                             (gx#syntax-e _%$%e188451188464%_)))
                        (let ((_%$%hd188455188475%_
                               (##car _%$%e188454188472%_))
                              (_%$%tl188456188477%_
                               (##cdr _%$%e188454188472%_)))
                          (if (gx#stx-pair? _%$%tl188456188477%_)
                              (let ((_%$%e188457188480%_
                                     (gx#syntax-e _%$%tl188456188477%_)))
                                (let ((_%$%hd188458188483%_
                                       (##car _%$%e188457188480%_))
                                      (_%$%tl188459188485%_
                                       (##cdr _%$%e188457188480%_)))
                                  (let ((_%hd188488%_ _%$%hd188458188483%_))
                                    (if (gx#stx-pair? _%$%tl188459188485%_)
                                        (let ((_%$%e188460188490%_
                                               (gx#syntax-e
                                                _%$%tl188459188485%_)))
                                          (let ((_%$%hd188461188493%_
                                                 (##car _%$%e188460188490%_))
                                                (_%$%tl188462188495%_
                                                 (##cdr _%$%e188460188490%_)))
                                            (let ((_%body188498%_
                                                   _%$%hd188461188493%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188462188495%_)
                                                  (cons _%form188450%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd188488%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body188498%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E188453188468%_)))))
                                        (_%$%E188453188468%_)))))
                              (_%$%E188453188468%_))))
                      (_%$%E188453188468%_)))))
          (_%$%E188452188500%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx188507%_)
        (let ((_%form188509%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx188507%_ _%form188509%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g189332_
        (let ((_g189333_ (##length _g189332_)))
          (cond ((##fx= _g189333_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g189332_))
                ((##fx= _g189333_ 2)
                 (apply gx#core-compile-top-let-values%__% _g189332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g189332_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx188446%_)
        (gx#core-compile-top-let-values%__% _%stx188446%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx188444%_)
        (gx#core-compile-top-let-values%__% _%stx188444%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx188403%_)
        (let* ((_%$%e188404188414%_ _%stx188403%_)
               (_%$%E188406188418%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188404188414%_)))
               (_%$%E188405188440%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188404188414%_)
                      (let ((_%$%e188407188422%_
                             (gx#syntax-e _%$%e188404188414%_)))
                        (let ((_%$%hd188408188425%_
                               (##car _%$%e188407188422%_))
                              (_%$%tl188409188427%_
                               (##cdr _%$%e188407188422%_)))
                          (if (gx#stx-pair? _%$%tl188409188427%_)
                              (let ((_%$%e188410188430%_
                                     (gx#syntax-e _%$%tl188409188427%_)))
                                (let ((_%$%hd188411188433%_
                                       (##car _%$%e188410188430%_))
                                      (_%$%tl188412188435%_
                                       (##cdr _%$%e188410188430%_)))
                                  (let ((_%e188438%_ _%$%hd188411188433%_))
                                    (if (gx#stx-null? _%$%tl188412188435%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e188438%_)
                                                    '()))
                                        (_%$%E188406188418%_)))))
                              (_%$%E188406188418%_))))
                      (_%$%E188406188418%_)))))
          (_%$%E188405188440%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx188362%_)
        (let* ((_%$%e188363188373%_ _%stx188362%_)
               (_%$%E188365188377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188363188373%_)))
               (_%$%E188364188399%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188363188373%_)
                      (let ((_%$%e188366188381%_
                             (gx#syntax-e _%$%e188363188373%_)))
                        (let ((_%$%hd188367188384%_
                               (##car _%$%e188366188381%_))
                              (_%$%tl188368188386%_
                               (##cdr _%$%e188366188381%_)))
                          (if (gx#stx-pair? _%$%tl188368188386%_)
                              (let ((_%$%e188369188389%_
                                     (gx#syntax-e _%$%tl188368188386%_)))
                                (let ((_%$%hd188370188392%_
                                       (##car _%$%e188369188389%_))
                                      (_%$%tl188371188394%_
                                       (##cdr _%$%e188369188389%_)))
                                  (let ((_%e188397%_ _%$%hd188370188392%_))
                                    (if (gx#stx-null? _%$%tl188371188394%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e188397%_)
                                                    '()))
                                        (_%$%E188365188377%_)))))
                              (_%$%E188365188377%_))))
                      (_%$%E188365188377%_)))))
          (_%$%E188364188399%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx188319%_)
        (let* ((_%$%e188320188330%_ _%stx188319%_)
               (_%$%E188322188334%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188320188330%_)))
               (_%$%E188321188358%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188320188330%_)
                      (let ((_%$%e188323188338%_
                             (gx#syntax-e _%$%e188320188330%_)))
                        (let ((_%$%hd188324188341%_
                               (##car _%$%e188323188338%_))
                              (_%$%tl188325188343%_
                               (##cdr _%$%e188323188338%_)))
                          (if (gx#stx-pair? _%$%tl188325188343%_)
                              (let ((_%$%e188326188346%_
                                     (gx#syntax-e _%$%tl188325188343%_)))
                                (let ((_%$%hd188327188349%_
                                       (##car _%$%e188326188346%_))
                                      (_%$%tl188328188351%_
                                       (##cdr _%$%e188326188346%_)))
                                  (let* ((_%rator188354%_ _%$%hd188327188349%_)
                                         (_%args188356%_ _%$%tl188328188351%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator188354%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args188356%_))))))
                              (_%$%E188322188334%_))))
                      (_%$%E188322188334%_)))))
          (_%$%E188321188358%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx188252%_)
        (let* ((_%$%e188253188269%_ _%stx188252%_)
               (_%$%E188255188273%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188253188269%_)))
               (_%$%E188254188315%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188253188269%_)
                      (let ((_%$%e188256188277%_
                             (gx#syntax-e _%$%e188253188269%_)))
                        (let ((_%$%hd188257188280%_
                               (##car _%$%e188256188277%_))
                              (_%$%tl188258188282%_
                               (##cdr _%$%e188256188277%_)))
                          (if (gx#stx-pair? _%$%tl188258188282%_)
                              (let ((_%$%e188259188285%_
                                     (gx#syntax-e _%$%tl188258188282%_)))
                                (let ((_%$%hd188260188288%_
                                       (##car _%$%e188259188285%_))
                                      (_%$%tl188261188290%_
                                       (##cdr _%$%e188259188285%_)))
                                  (let ((_%test188293%_ _%$%hd188260188288%_))
                                    (if (gx#stx-pair? _%$%tl188261188290%_)
                                        (let ((_%$%e188262188295%_
                                               (gx#syntax-e
                                                _%$%tl188261188290%_)))
                                          (let ((_%$%hd188263188298%_
                                                 (##car _%$%e188262188295%_))
                                                (_%$%tl188264188300%_
                                                 (##cdr _%$%e188262188295%_)))
                                            (let ((_%K188303%_
                                                   _%$%hd188263188298%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl188264188300%_)
                                                  (let ((_%$%e188265188305%_
                                                         (gx#syntax-e
                                                          _%$%tl188264188300%_)))
                                                    (let ((_%$%hd188266188308%_
                                                           (##car _%$%e188265188305%_))
                                                          (_%$%tl188267188310%_
                                                           (##cdr _%$%e188265188305%_)))
                                                      (let ((_%E188313%_
                                                             _%$%hd188266188308%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl188267188310%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test188293%_)
                                (cons (gx#core-compile-top-syntax _%K188303%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E188313%_)
                                            '()))))
                    (_%$%E188255188273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E188255188273%_)))))
                                        (_%$%E188255188273%_)))))
                              (_%$%E188255188273%_))))
                      (_%$%E188255188273%_)))))
          (_%$%E188254188315%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx188211%_)
        (let* ((_%$%e188212188222%_ _%stx188211%_)
               (_%$%E188214188226%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188212188222%_)))
               (_%$%E188213188248%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188212188222%_)
                      (let ((_%$%e188215188230%_
                             (gx#syntax-e _%$%e188212188222%_)))
                        (let ((_%$%hd188216188233%_
                               (##car _%$%e188215188230%_))
                              (_%$%tl188217188235%_
                               (##cdr _%$%e188215188230%_)))
                          (if (gx#stx-pair? _%$%tl188217188235%_)
                              (let ((_%$%e188218188238%_
                                     (gx#syntax-e _%$%tl188217188235%_)))
                                (let ((_%$%hd188219188241%_
                                       (##car _%$%e188218188238%_))
                                      (_%$%tl188220188243%_
                                       (##cdr _%$%e188218188238%_)))
                                  (let ((_%id188246%_ _%$%hd188219188241%_))
                                    (if (gx#stx-null? _%$%tl188220188243%_)
                                        (if (gx#identifier? _%id188246%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id188246%_)
                                                        '()))
                                            (_%$%E188214188226%_))
                                        (_%$%E188214188226%_)))))
                              (_%$%E188214188226%_))))
                      (_%$%E188214188226%_)))))
          (_%$%E188213188248%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx188157%_)
        (let* ((_%$%e188158188171%_ _%stx188157%_)
               (_%$%E188160188175%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188158188171%_)))
               (_%$%E188159188207%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188158188171%_)
                      (let ((_%$%e188161188179%_
                             (gx#syntax-e _%$%e188158188171%_)))
                        (let ((_%$%hd188162188182%_
                               (##car _%$%e188161188179%_))
                              (_%$%tl188163188184%_
                               (##cdr _%$%e188161188179%_)))
                          (if (gx#stx-pair? _%$%tl188163188184%_)
                              (let ((_%$%e188164188187%_
                                     (gx#syntax-e _%$%tl188163188184%_)))
                                (let ((_%$%hd188165188190%_
                                       (##car _%$%e188164188187%_))
                                      (_%$%tl188166188192%_
                                       (##cdr _%$%e188164188187%_)))
                                  (let ((_%id188195%_ _%$%hd188165188190%_))
                                    (if (gx#stx-pair? _%$%tl188166188192%_)
                                        (let ((_%$%e188167188197%_
                                               (gx#syntax-e
                                                _%$%tl188166188192%_)))
                                          (let ((_%$%hd188168188200%_
                                                 (##car _%$%e188167188197%_))
                                                (_%$%tl188169188202%_
                                                 (##cdr _%$%e188167188197%_)))
                                            (let ((_%expr188205%_
                                                   _%$%hd188168188200%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188169188202%_)
                                                  (if (gx#identifier?
                                                       _%id188195%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id188195%_)
                          (cons (gx#core-compile-top-syntax _%expr188205%_)
                                '())))
              (_%$%E188160188175%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E188160188175%_)))))
                                        (_%$%E188160188175%_)))))
                              (_%$%E188160188175%_))))
                      (_%$%E188160188175%_)))))
          (_%$%E188159188207%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id188151%_)
        (let ((_%$e188153%_ (gx#resolve-identifier__0 _%id188151%_)))
          (if _%$e188153%_
              (##unchecked-structure-ref _%$e188153%_ '1 '#f '#f)
              _%id188151%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd188149%_)
        (if (gx#identifier? _%hd188149%_)
            (gx#core-compile-top-runtime-ref _%hd188149%_)
            '#f)))))
