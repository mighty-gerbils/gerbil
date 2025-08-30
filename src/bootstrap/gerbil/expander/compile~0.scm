(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1756224516)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx138443%_)
        (let* ((_%e138444138451%_ _%stx138443%_)
               (_%E138446138455%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138444138451%_)))
               (_%E138445138469%_
                (lambda ()
                  (if (gx#stx-pair? _%e138444138451%_)
                      (let ((_%e138447138459%_
                             (gx#syntax-e _%e138444138451%_)))
                        (let ((_%hd138448138462%_ (##car _%e138447138459%_))
                              (_%tl138449138464%_ (##cdr _%e138447138459%_)))
                          (let* ((_%form138467%_ _%hd138448138462%_)
                                 (__self138472
                                  (gx#syntax-local-e__0 _%form138467%_))
                                 (__method138473
                                  (__method-ref
                                   __self138472
                                   'compile-top-syntax)))
                            (if __method138473
                                (__method138473 __self138472 _%stx138443%_)
                                (begin
                                  (error '"Missing method"
                                         __self138472
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E138446138455%_)))))
          (_%E138445138469%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self138391%_ _%stx138392%_)
        (let* ((_%self138395%_ _%self138391%_)
               (_%self138404138412%_ _%self138395%_)
               (_%E138406138416%_
                (lambda ()
                  (error '"No clause matching"
                         _%self138404138412%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K138407138429%_
                (lambda (_%K138419%_)
                  (let ((_%$e138421%_ (gx#stx-source _%stx138392%_)))
                    (if _%$e138421%_
                        ((lambda (_%g138423138425%_)
                           (gx#stx-wrap-source
                            (_%K138419%_ _%stx138392%_)
                            _%g138423138425%_))
                         _%$e138421%_)
                        (_%K138419%_ _%stx138392%_)))))
               (_%e138408138432%_
                (##unchecked-structure-ref _%self138404138412%_ '1 '#f '#f))
               (_%e138409138435%_
                (##unchecked-structure-ref _%self138404138412%_ '2 '#f '#f))
               (_%e138410138438%_
                (##unchecked-structure-ref _%self138404138412%_ '3 '#f '#f))
               (_%K138441%_ _%e138410138438%_))
          (_%K138407138429%_ _%K138441%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx138265%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx138265%_)))
    (define gx#core-compile-top-begin%
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
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body138259%_)))))
                      (_%E138238138247%_)))))
          (_%E138237138261%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx138204%_)
        (let* ((_%e138205138212%_ _%stx138204%_)
               (_%E138207138216%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138205138212%_)))
               (_%E138206138231%_
                (lambda ()
                  (if (gx#stx-pair? _%e138205138212%_)
                      (let ((_%e138208138220%_
                             (gx#syntax-e _%e138205138212%_)))
                        (let ((_%hd138209138223%_ (##car _%e138208138220%_))
                              (_%tl138210138225%_ (##cdr _%e138208138220%_)))
                          (let ((_%body138228%_ _%tl138210138225%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body138228%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E138207138216%_)))))
          (_%E138206138231%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx138174%_)
        (let* ((_%e138175138182%_ _%stx138174%_)
               (_%E138177138186%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138175138182%_)))
               (_%E138176138200%_
                (lambda ()
                  (if (gx#stx-pair? _%e138175138182%_)
                      (let ((_%e138178138190%_
                             (gx#syntax-e _%e138175138182%_)))
                        (let ((_%hd138179138193%_ (##car _%e138178138190%_))
                              (_%tl138180138195%_ (##cdr _%e138178138190%_)))
                          (let ((_%body138198%_ _%tl138180138195%_))
                            (cons '%#begin-foreign _%body138198%_))))
                      (_%E138177138186%_)))))
          (_%E138176138200%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx138120%_)
        (let* ((_%e138121138134%_ _%stx138120%_)
               (_%E138123138138%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138121138134%_)))
               (_%E138122138170%_
                (lambda ()
                  (if (gx#stx-pair? _%e138121138134%_)
                      (let ((_%e138124138142%_
                             (gx#syntax-e _%e138121138134%_)))
                        (let ((_%hd138125138145%_ (##car _%e138124138142%_))
                              (_%tl138126138147%_ (##cdr _%e138124138142%_)))
                          (if (gx#stx-pair? _%tl138126138147%_)
                              (let ((_%e138127138150%_
                                     (gx#syntax-e _%tl138126138147%_)))
                                (let ((_%hd138128138153%_
                                       (##car _%e138127138150%_))
                                      (_%tl138129138155%_
                                       (##cdr _%e138127138150%_)))
                                  (let ((_%ann138158%_ _%hd138128138153%_))
                                    (if (gx#stx-pair? _%tl138129138155%_)
                                        (let ((_%e138130138160%_
                                               (gx#syntax-e
                                                _%tl138129138155%_)))
                                          (let ((_%hd138131138163%_
                                                 (##car _%e138130138160%_))
                                                (_%tl138132138165%_
                                                 (##cdr _%e138130138160%_)))
                                            (let ((_%expr138168%_
                                                   _%hd138131138163%_))
                                              (if (gx#stx-null?
                                                   _%tl138132138165%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr138168%_)
                                                  (_%E138123138138%_)))))
                                        (_%E138123138138%_)))))
                              (_%E138123138138%_))))
                      (_%E138123138138%_)))))
          (_%E138122138170%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx138090%_)
        (let* ((_%e138091138098%_ _%stx138090%_)
               (_%E138093138102%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138091138098%_)))
               (_%E138092138116%_
                (lambda ()
                  (if (gx#stx-pair? _%e138091138098%_)
                      (let ((_%e138094138106%_
                             (gx#syntax-e _%e138091138098%_)))
                        (let ((_%hd138095138109%_ (##car _%e138094138106%_))
                              (_%tl138096138111%_ (##cdr _%e138094138106%_)))
                          (let ((_%body138114%_ _%tl138096138111%_))
                            (cons '%#import _%body138114%_))))
                      (_%E138093138102%_)))))
          (_%E138092138116%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx138047%_)
        (let* ((_%e138048138058%_ _%stx138047%_)
               (_%E138050138062%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138048138058%_)))
               (_%E138049138086%_
                (lambda ()
                  (if (gx#stx-pair? _%e138048138058%_)
                      (let ((_%e138051138066%_
                             (gx#syntax-e _%e138048138058%_)))
                        (let ((_%hd138052138069%_ (##car _%e138051138066%_))
                              (_%tl138053138071%_ (##cdr _%e138051138066%_)))
                          (if (gx#stx-pair? _%tl138053138071%_)
                              (let ((_%e138054138074%_
                                     (gx#syntax-e _%tl138053138071%_)))
                                (let ((_%hd138055138077%_
                                       (##car _%e138054138074%_))
                                      (_%tl138056138079%_
                                       (##cdr _%e138054138074%_)))
                                  (let* ((_%hd138082%_ _%hd138055138077%_)
                                         (_%body138084%_ _%tl138056138079%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd138082%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body138084%_))))))
                              (_%E138050138062%_))))
                      (_%E138050138062%_)))))
          (_%E138049138086%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx138017%_)
        (let* ((_%e138018138025%_ _%stx138017%_)
               (_%E138020138029%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e138018138025%_)))
               (_%E138019138043%_
                (lambda ()
                  (if (gx#stx-pair? _%e138018138025%_)
                      (let ((_%e138021138033%_
                             (gx#syntax-e _%e138018138025%_)))
                        (let ((_%hd138022138036%_ (##car _%e138021138033%_))
                              (_%tl138023138038%_ (##cdr _%e138021138033%_)))
                          (let ((_%body138041%_ _%tl138023138038%_))
                            (cons '%#export _%body138041%_))))
                      (_%E138020138029%_)))))
          (_%E138019138043%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx137987%_)
        (let* ((_%e137988137995%_ _%stx137987%_)
               (_%E137990137999%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137988137995%_)))
               (_%E137989138013%_
                (lambda ()
                  (if (gx#stx-pair? _%e137988137995%_)
                      (let ((_%e137991138003%_
                             (gx#syntax-e _%e137988137995%_)))
                        (let ((_%hd137992138006%_ (##car _%e137991138003%_))
                              (_%tl137993138008%_ (##cdr _%e137991138003%_)))
                          (let ((_%body138011%_ _%tl137993138008%_))
                            (cons '%#provide _%body138011%_))))
                      (_%E137990137999%_)))))
          (_%E137989138013%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx137957%_)
        (let* ((_%e137958137965%_ _%stx137957%_)
               (_%E137960137969%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137958137965%_)))
               (_%E137959137983%_
                (lambda ()
                  (if (gx#stx-pair? _%e137958137965%_)
                      (let ((_%e137961137973%_
                             (gx#syntax-e _%e137958137965%_)))
                        (let ((_%hd137962137976%_ (##car _%e137961137973%_))
                              (_%tl137963137978%_ (##cdr _%e137961137973%_)))
                          (let ((_%body137981%_ _%tl137963137978%_))
                            (cons '%#extern _%body137981%_))))
                      (_%E137960137969%_)))))
          (_%E137959137983%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx137903%_)
        (let* ((_%e137904137917%_ _%stx137903%_)
               (_%E137906137921%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137904137917%_)))
               (_%E137905137953%_
                (lambda ()
                  (if (gx#stx-pair? _%e137904137917%_)
                      (let ((_%e137907137925%_
                             (gx#syntax-e _%e137904137917%_)))
                        (let ((_%hd137908137928%_ (##car _%e137907137925%_))
                              (_%tl137909137930%_ (##cdr _%e137907137925%_)))
                          (if (gx#stx-pair? _%tl137909137930%_)
                              (let ((_%e137910137933%_
                                     (gx#syntax-e _%tl137909137930%_)))
                                (let ((_%hd137911137936%_
                                       (##car _%e137910137933%_))
                                      (_%tl137912137938%_
                                       (##cdr _%e137910137933%_)))
                                  (let ((_%hd137941%_ _%hd137911137936%_))
                                    (if (gx#stx-pair? _%tl137912137938%_)
                                        (let ((_%e137913137943%_
                                               (gx#syntax-e
                                                _%tl137912137938%_)))
                                          (let ((_%hd137914137946%_
                                                 (##car _%e137913137943%_))
                                                (_%tl137915137948%_
                                                 (##cdr _%e137913137943%_)))
                                            (let ((_%expr137951%_
                                                   _%hd137914137946%_))
                                              (if (gx#stx-null?
                                                   _%tl137915137948%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd137941%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr137951%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137906137921%_)))))
                                        (_%E137906137921%_)))))
                              (_%E137906137921%_))))
                      (_%E137906137921%_)))))
          (_%E137905137953%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx137848%_)
        (let* ((_%e137849137862%_ _%stx137848%_)
               (_%E137851137866%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137849137862%_)))
               (_%E137850137899%_
                (lambda ()
                  (if (gx#stx-pair? _%e137849137862%_)
                      (let ((_%e137852137870%_
                             (gx#syntax-e _%e137849137862%_)))
                        (let ((_%hd137853137873%_ (##car _%e137852137870%_))
                              (_%tl137854137875%_ (##cdr _%e137852137870%_)))
                          (if (gx#stx-pair? _%tl137854137875%_)
                              (let ((_%e137855137878%_
                                     (gx#syntax-e _%tl137854137875%_)))
                                (let ((_%hd137856137881%_
                                       (##car _%e137855137878%_))
                                      (_%tl137857137883%_
                                       (##cdr _%e137855137878%_)))
                                  (let ((_%hd137886%_ _%hd137856137881%_))
                                    (if (gx#stx-pair? _%tl137857137883%_)
                                        (let ((_%e137858137888%_
                                               (gx#syntax-e
                                                _%tl137857137883%_)))
                                          (let ((_%hd137859137891%_
                                                 (##car _%e137858137888%_))
                                                (_%tl137860137893%_
                                                 (##cdr _%e137858137888%_)))
                                            (let ((_%expr137896%_
                                                   _%hd137859137891%_))
                                              (if (gx#stx-null?
                                                   _%tl137860137893%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd137886%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr137896%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137851137866%_)))))
                                        (_%E137851137866%_)))))
                              (_%E137851137866%_))))
                      (_%E137851137866%_)))))
          (_%E137850137899%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx137818%_)
        (let* ((_%e137819137826%_ _%stx137818%_)
               (_%E137821137830%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137819137826%_)))
               (_%E137820137844%_
                (lambda ()
                  (if (gx#stx-pair? _%e137819137826%_)
                      (let ((_%e137822137834%_
                             (gx#syntax-e _%e137819137826%_)))
                        (let ((_%hd137823137837%_ (##car _%e137822137834%_))
                              (_%tl137824137839%_ (##cdr _%e137822137834%_)))
                          (let ((_%body137842%_ _%tl137824137839%_))
                            (cons '%#define-alias _%body137842%_))))
                      (_%E137821137830%_)))))
          (_%E137820137844%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx137788%_)
        (let* ((_%e137789137796%_ _%stx137788%_)
               (_%E137791137800%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137789137796%_)))
               (_%E137790137814%_
                (lambda ()
                  (if (gx#stx-pair? _%e137789137796%_)
                      (let ((_%e137792137804%_
                             (gx#syntax-e _%e137789137796%_)))
                        (let ((_%hd137793137807%_ (##car _%e137792137804%_))
                              (_%tl137794137809%_ (##cdr _%e137792137804%_)))
                          (let ((_%body137812%_ _%tl137794137809%_))
                            (cons '%#define-runtime _%body137812%_))))
                      (_%E137791137800%_)))))
          (_%E137790137814%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx137758%_)
        (let* ((_%e137759137766%_ _%stx137758%_)
               (_%E137761137770%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137759137766%_)))
               (_%E137760137784%_
                (lambda ()
                  (if (gx#stx-pair? _%e137759137766%_)
                      (let ((_%e137762137774%_
                             (gx#syntax-e _%e137759137766%_)))
                        (let ((_%hd137763137777%_ (##car _%e137762137774%_))
                              (_%tl137764137779%_ (##cdr _%e137762137774%_)))
                          (let ((_%decls137782%_ _%tl137764137779%_))
                            (cons '%#declare _%decls137782%_))))
                      (_%E137761137770%_)))))
          (_%E137760137784%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx137728%_)
        (let* ((_%e137729137736%_ _%stx137728%_)
               (_%E137731137740%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137729137736%_)))
               (_%E137730137754%_
                (lambda ()
                  (if (gx#stx-pair? _%e137729137736%_)
                      (let ((_%e137732137744%_
                             (gx#syntax-e _%e137729137736%_)))
                        (let ((_%hd137733137747%_ (##car _%e137732137744%_))
                              (_%tl137734137749%_ (##cdr _%e137732137744%_)))
                          (let ((_%clause137752%_ _%tl137734137749%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause137752%_)))))
                      (_%E137731137740%_)))))
          (_%E137730137754%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx137685%_)
        (let* ((_%e137686137696%_ _%stx137685%_)
               (_%E137688137700%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137686137696%_)))
               (_%E137687137724%_
                (lambda ()
                  (if (gx#stx-pair? _%e137686137696%_)
                      (let ((_%e137689137704%_
                             (gx#syntax-e _%e137686137696%_)))
                        (let ((_%hd137690137707%_ (##car _%e137689137704%_))
                              (_%tl137691137709%_ (##cdr _%e137689137704%_)))
                          (let ((_%hd137712%_ _%hd137690137707%_))
                            (if (gx#stx-pair? _%tl137691137709%_)
                                (let ((_%e137692137714%_
                                       (gx#syntax-e _%tl137691137709%_)))
                                  (let ((_%hd137693137717%_
                                         (##car _%e137692137714%_))
                                        (_%tl137694137719%_
                                         (##cdr _%e137692137714%_)))
                                    (let ((_%body137722%_ _%hd137693137717%_))
                                      (if (gx#stx-null? _%tl137694137719%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd137712%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body137722%_)
                                                      '()))
                                          (_%E137688137700%_)))))
                                (_%E137688137700%_)))))
                      (_%E137688137700%_)))))
          (_%E137687137724%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx137655%_)
        (let* ((_%e137656137663%_ _%stx137655%_)
               (_%E137658137667%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137656137663%_)))
               (_%E137657137681%_
                (lambda ()
                  (if (gx#stx-pair? _%e137656137663%_)
                      (let ((_%e137659137671%_
                             (gx#syntax-e _%e137656137663%_)))
                        (let ((_%hd137660137674%_ (##car _%e137659137671%_))
                              (_%tl137661137676%_ (##cdr _%e137659137671%_)))
                          (let ((_%clauses137679%_ _%tl137661137676%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses137679%_)))))
                      (_%E137658137667%_)))))
          (_%E137657137681%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx137590%_ _%form137591%_)
        (let* ((_%e137592137605%_ _%stx137590%_)
               (_%E137594137609%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137592137605%_)))
               (_%E137593137641%_
                (lambda ()
                  (if (gx#stx-pair? _%e137592137605%_)
                      (let ((_%e137595137613%_
                             (gx#syntax-e _%e137592137605%_)))
                        (let ((_%hd137596137616%_ (##car _%e137595137613%_))
                              (_%tl137597137618%_ (##cdr _%e137595137613%_)))
                          (if (gx#stx-pair? _%tl137597137618%_)
                              (let ((_%e137598137621%_
                                     (gx#syntax-e _%tl137597137618%_)))
                                (let ((_%hd137599137624%_
                                       (##car _%e137598137621%_))
                                      (_%tl137600137626%_
                                       (##cdr _%e137598137621%_)))
                                  (let ((_%hd137629%_ _%hd137599137624%_))
                                    (if (gx#stx-pair? _%tl137600137626%_)
                                        (let ((_%e137601137631%_
                                               (gx#syntax-e
                                                _%tl137600137626%_)))
                                          (let ((_%hd137602137634%_
                                                 (##car _%e137601137631%_))
                                                (_%tl137603137636%_
                                                 (##cdr _%e137601137631%_)))
                                            (let ((_%body137639%_
                                                   _%hd137602137634%_))
                                              (if (gx#stx-null?
                                                   _%tl137603137636%_)
                                                  (cons _%form137591%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd137629%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body137639%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137594137609%_)))))
                                        (_%E137594137609%_)))))
                              (_%E137594137609%_))))
                      (_%E137594137609%_)))))
          (_%E137593137641%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx137648%_)
        (let ((_%form137650%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx137648%_ _%form137650%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g138474_
        (let ((_g138475_ (##length _g138474_)))
          (cond ((##fx= _g138475_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g138474_))
                ((##fx= _g138475_ 2)
                 (apply gx#core-compile-top-let-values%__% _g138474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g138474_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx137587%_)
        (gx#core-compile-top-let-values%__% _%stx137587%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx137585%_)
        (gx#core-compile-top-let-values%__% _%stx137585%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx137544%_)
        (let* ((_%e137545137555%_ _%stx137544%_)
               (_%E137547137559%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137545137555%_)))
               (_%E137546137581%_
                (lambda ()
                  (if (gx#stx-pair? _%e137545137555%_)
                      (let ((_%e137548137563%_
                             (gx#syntax-e _%e137545137555%_)))
                        (let ((_%hd137549137566%_ (##car _%e137548137563%_))
                              (_%tl137550137568%_ (##cdr _%e137548137563%_)))
                          (if (gx#stx-pair? _%tl137550137568%_)
                              (let ((_%e137551137571%_
                                     (gx#syntax-e _%tl137550137568%_)))
                                (let ((_%hd137552137574%_
                                       (##car _%e137551137571%_))
                                      (_%tl137553137576%_
                                       (##cdr _%e137551137571%_)))
                                  (let ((_%e137579%_ _%hd137552137574%_))
                                    (if (gx#stx-null? _%tl137553137576%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e137579%_)
                                                    '()))
                                        (_%E137547137559%_)))))
                              (_%E137547137559%_))))
                      (_%E137547137559%_)))))
          (_%E137546137581%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx137503%_)
        (let* ((_%e137504137514%_ _%stx137503%_)
               (_%E137506137518%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137504137514%_)))
               (_%E137505137540%_
                (lambda ()
                  (if (gx#stx-pair? _%e137504137514%_)
                      (let ((_%e137507137522%_
                             (gx#syntax-e _%e137504137514%_)))
                        (let ((_%hd137508137525%_ (##car _%e137507137522%_))
                              (_%tl137509137527%_ (##cdr _%e137507137522%_)))
                          (if (gx#stx-pair? _%tl137509137527%_)
                              (let ((_%e137510137530%_
                                     (gx#syntax-e _%tl137509137527%_)))
                                (let ((_%hd137511137533%_
                                       (##car _%e137510137530%_))
                                      (_%tl137512137535%_
                                       (##cdr _%e137510137530%_)))
                                  (let ((_%e137538%_ _%hd137511137533%_))
                                    (if (gx#stx-null? _%tl137512137535%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e137538%_)
                                                    '()))
                                        (_%E137506137518%_)))))
                              (_%E137506137518%_))))
                      (_%E137506137518%_)))))
          (_%E137505137540%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx137460%_)
        (let* ((_%e137461137471%_ _%stx137460%_)
               (_%E137463137475%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137461137471%_)))
               (_%E137462137499%_
                (lambda ()
                  (if (gx#stx-pair? _%e137461137471%_)
                      (let ((_%e137464137479%_
                             (gx#syntax-e _%e137461137471%_)))
                        (let ((_%hd137465137482%_ (##car _%e137464137479%_))
                              (_%tl137466137484%_ (##cdr _%e137464137479%_)))
                          (if (gx#stx-pair? _%tl137466137484%_)
                              (let ((_%e137467137487%_
                                     (gx#syntax-e _%tl137466137484%_)))
                                (let ((_%hd137468137490%_
                                       (##car _%e137467137487%_))
                                      (_%tl137469137492%_
                                       (##cdr _%e137467137487%_)))
                                  (let* ((_%rator137495%_ _%hd137468137490%_)
                                         (_%args137497%_ _%tl137469137492%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator137495%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args137497%_))))))
                              (_%E137463137475%_))))
                      (_%E137463137475%_)))))
          (_%E137462137499%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx137393%_)
        (let* ((_%e137394137410%_ _%stx137393%_)
               (_%E137396137414%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137394137410%_)))
               (_%E137395137456%_
                (lambda ()
                  (if (gx#stx-pair? _%e137394137410%_)
                      (let ((_%e137397137418%_
                             (gx#syntax-e _%e137394137410%_)))
                        (let ((_%hd137398137421%_ (##car _%e137397137418%_))
                              (_%tl137399137423%_ (##cdr _%e137397137418%_)))
                          (if (gx#stx-pair? _%tl137399137423%_)
                              (let ((_%e137400137426%_
                                     (gx#syntax-e _%tl137399137423%_)))
                                (let ((_%hd137401137429%_
                                       (##car _%e137400137426%_))
                                      (_%tl137402137431%_
                                       (##cdr _%e137400137426%_)))
                                  (let ((_%test137434%_ _%hd137401137429%_))
                                    (if (gx#stx-pair? _%tl137402137431%_)
                                        (let ((_%e137403137436%_
                                               (gx#syntax-e
                                                _%tl137402137431%_)))
                                          (let ((_%hd137404137439%_
                                                 (##car _%e137403137436%_))
                                                (_%tl137405137441%_
                                                 (##cdr _%e137403137436%_)))
                                            (let ((_%K137444%_
                                                   _%hd137404137439%_))
                                              (if (gx#stx-pair?
                                                   _%tl137405137441%_)
                                                  (let ((_%e137406137446%_
                                                         (gx#syntax-e
                                                          _%tl137405137441%_)))
                                                    (let ((_%hd137407137449%_
                                                           (##car _%e137406137446%_))
                                                          (_%tl137408137451%_
                                                           (##cdr _%e137406137446%_)))
                                                      (let ((_%E137454%_
                                                             _%hd137407137449%_))
                                                        (if (gx#stx-null?
                                                             _%tl137408137451%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test137434%_)
                                (cons (gx#core-compile-top-syntax _%K137444%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E137454%_)
                                            '()))))
                    (_%E137396137414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137396137414%_)))))
                                        (_%E137396137414%_)))))
                              (_%E137396137414%_))))
                      (_%E137396137414%_)))))
          (_%E137395137456%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx137352%_)
        (let* ((_%e137353137363%_ _%stx137352%_)
               (_%E137355137367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137353137363%_)))
               (_%E137354137389%_
                (lambda ()
                  (if (gx#stx-pair? _%e137353137363%_)
                      (let ((_%e137356137371%_
                             (gx#syntax-e _%e137353137363%_)))
                        (let ((_%hd137357137374%_ (##car _%e137356137371%_))
                              (_%tl137358137376%_ (##cdr _%e137356137371%_)))
                          (if (gx#stx-pair? _%tl137358137376%_)
                              (let ((_%e137359137379%_
                                     (gx#syntax-e _%tl137358137376%_)))
                                (let ((_%hd137360137382%_
                                       (##car _%e137359137379%_))
                                      (_%tl137361137384%_
                                       (##cdr _%e137359137379%_)))
                                  (let ((_%id137387%_ _%hd137360137382%_))
                                    (if (gx#stx-null? _%tl137361137384%_)
                                        (if (gx#identifier? _%id137387%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id137387%_)
                                                        '()))
                                            (_%E137355137367%_))
                                        (_%E137355137367%_)))))
                              (_%E137355137367%_))))
                      (_%E137355137367%_)))))
          (_%E137354137389%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx137298%_)
        (let* ((_%e137299137312%_ _%stx137298%_)
               (_%E137301137316%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137299137312%_)))
               (_%E137300137348%_
                (lambda ()
                  (if (gx#stx-pair? _%e137299137312%_)
                      (let ((_%e137302137320%_
                             (gx#syntax-e _%e137299137312%_)))
                        (let ((_%hd137303137323%_ (##car _%e137302137320%_))
                              (_%tl137304137325%_ (##cdr _%e137302137320%_)))
                          (if (gx#stx-pair? _%tl137304137325%_)
                              (let ((_%e137305137328%_
                                     (gx#syntax-e _%tl137304137325%_)))
                                (let ((_%hd137306137331%_
                                       (##car _%e137305137328%_))
                                      (_%tl137307137333%_
                                       (##cdr _%e137305137328%_)))
                                  (let ((_%id137336%_ _%hd137306137331%_))
                                    (if (gx#stx-pair? _%tl137307137333%_)
                                        (let ((_%e137308137338%_
                                               (gx#syntax-e
                                                _%tl137307137333%_)))
                                          (let ((_%hd137309137341%_
                                                 (##car _%e137308137338%_))
                                                (_%tl137310137343%_
                                                 (##cdr _%e137308137338%_)))
                                            (let ((_%expr137346%_
                                                   _%hd137309137341%_))
                                              (if (gx#stx-null?
                                                   _%tl137310137343%_)
                                                  (if (gx#identifier?
                                                       _%id137336%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id137336%_)
                          (cons (gx#core-compile-top-syntax _%expr137346%_)
                                '())))
              (_%E137301137316%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E137301137316%_)))))
                                        (_%E137301137316%_)))))
                              (_%E137301137316%_))))
                      (_%E137301137316%_)))))
          (_%E137300137348%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id137292%_)
        (let ((_%$e137294%_ (gx#resolve-identifier__0 _%id137292%_)))
          (if _%$e137294%_
              (##unchecked-structure-ref _%$e137294%_ '1 '#f '#f)
              _%id137292%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd137290%_)
        (if (gx#identifier? _%hd137290%_)
            (gx#core-compile-top-runtime-ref _%hd137290%_)
            '#f)))))
