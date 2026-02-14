(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1771101402)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx187262%_)
        (let* ((_%e187263187270%_ _%stx187262%_)
               (_%E187265187274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187263187270%_)))
               (_%E187264187288%_
                (lambda ()
                  (if (gx#stx-pair? _%e187263187270%_)
                      (let ((_%e187266187278%_
                             (gx#syntax-e _%e187263187270%_)))
                        (let ((_%hd187267187281%_ (##car _%e187266187278%_))
                              (_%tl187268187283%_ (##cdr _%e187266187278%_)))
                          (let* ((_%form187286%_ _%hd187267187281%_)
                                 (__self187291
                                  (gx#syntax-local-e__0 _%form187286%_))
                                 (__method187292
                                  (__method-ref
                                   __self187291
                                   'compile-top-syntax)))
                            (if __method187292
                                (__method187292 __self187291 _%stx187262%_)
                                (begin
                                  (error '"Missing method"
                                         __self187291
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E187265187274%_)))))
          (_%E187264187288%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self187211%_ _%stx187212%_)
        (let* ((_%self187215%_ _%self187211%_)
               (_%self187224187232%_ _%self187215%_)
               (_%E187226187235%_
                (lambda ()
                  (error '"No clause matching"
                         _%self187224187232%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K187227187248%_
                (lambda (_%K187238%_)
                  (let ((_%$e187240%_ (gx#stx-source _%stx187212%_)))
                    (if _%$e187240%_
                        ((lambda (_%g187242187244%_)
                           (gx#stx-wrap-source
                            (_%K187238%_ _%stx187212%_)
                            _%g187242187244%_))
                         _%$e187240%_)
                        (_%K187238%_ _%stx187212%_)))))
               (_%e187228187251%_
                (##unchecked-structure-ref _%self187224187232%_ '1 '#f '#f))
               (_%e187229187254%_
                (##unchecked-structure-ref _%self187224187232%_ '2 '#f '#f))
               (_%e187230187257%_
                (##unchecked-structure-ref _%self187224187232%_ '3 '#f '#f))
               (_%K187260%_ _%e187230187257%_))
          (_%K187227187248%_ _%K187260%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx187085%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx187085%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx187055%_)
        (let* ((_%e187056187063%_ _%stx187055%_)
               (_%E187058187067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187056187063%_)))
               (_%E187057187081%_
                (lambda ()
                  (if (gx#stx-pair? _%e187056187063%_)
                      (let ((_%e187059187071%_
                             (gx#syntax-e _%e187056187063%_)))
                        (let ((_%hd187060187074%_ (##car _%e187059187071%_))
                              (_%tl187061187076%_ (##cdr _%e187059187071%_)))
                          (let ((_%body187079%_ _%tl187061187076%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body187079%_)))))
                      (_%E187058187067%_)))))
          (_%E187057187081%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx187024%_)
        (let* ((_%e187025187032%_ _%stx187024%_)
               (_%E187027187036%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187025187032%_)))
               (_%E187026187051%_
                (lambda ()
                  (if (gx#stx-pair? _%e187025187032%_)
                      (let ((_%e187028187040%_
                             (gx#syntax-e _%e187025187032%_)))
                        (let ((_%hd187029187043%_ (##car _%e187028187040%_))
                              (_%tl187030187045%_ (##cdr _%e187028187040%_)))
                          (let ((_%body187048%_ _%tl187030187045%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body187048%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E187027187036%_)))))
          (_%E187026187051%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx186994%_)
        (let* ((_%e186995187002%_ _%stx186994%_)
               (_%E186997187006%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186995187002%_)))
               (_%E186996187020%_
                (lambda ()
                  (if (gx#stx-pair? _%e186995187002%_)
                      (let ((_%e186998187010%_
                             (gx#syntax-e _%e186995187002%_)))
                        (let ((_%hd186999187013%_ (##car _%e186998187010%_))
                              (_%tl187000187015%_ (##cdr _%e186998187010%_)))
                          (let ((_%body187018%_ _%tl187000187015%_))
                            (cons '%#begin-foreign _%body187018%_))))
                      (_%E186997187006%_)))))
          (_%E186996187020%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx186940%_)
        (let* ((_%e186941186954%_ _%stx186940%_)
               (_%E186943186958%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186941186954%_)))
               (_%E186942186990%_
                (lambda ()
                  (if (gx#stx-pair? _%e186941186954%_)
                      (let ((_%e186944186962%_
                             (gx#syntax-e _%e186941186954%_)))
                        (let ((_%hd186945186965%_ (##car _%e186944186962%_))
                              (_%tl186946186967%_ (##cdr _%e186944186962%_)))
                          (if (gx#stx-pair? _%tl186946186967%_)
                              (let ((_%e186947186970%_
                                     (gx#syntax-e _%tl186946186967%_)))
                                (let ((_%hd186948186973%_
                                       (##car _%e186947186970%_))
                                      (_%tl186949186975%_
                                       (##cdr _%e186947186970%_)))
                                  (let ((_%ann186978%_ _%hd186948186973%_))
                                    (if (gx#stx-pair? _%tl186949186975%_)
                                        (let ((_%e186950186980%_
                                               (gx#syntax-e
                                                _%tl186949186975%_)))
                                          (let ((_%hd186951186983%_
                                                 (##car _%e186950186980%_))
                                                (_%tl186952186985%_
                                                 (##cdr _%e186950186980%_)))
                                            (let ((_%expr186988%_
                                                   _%hd186951186983%_))
                                              (if (gx#stx-null?
                                                   _%tl186952186985%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr186988%_)
                                                  (_%E186943186958%_)))))
                                        (_%E186943186958%_)))))
                              (_%E186943186958%_))))
                      (_%E186943186958%_)))))
          (_%E186942186990%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx186910%_)
        (let* ((_%e186911186918%_ _%stx186910%_)
               (_%E186913186922%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186911186918%_)))
               (_%E186912186936%_
                (lambda ()
                  (if (gx#stx-pair? _%e186911186918%_)
                      (let ((_%e186914186926%_
                             (gx#syntax-e _%e186911186918%_)))
                        (let ((_%hd186915186929%_ (##car _%e186914186926%_))
                              (_%tl186916186931%_ (##cdr _%e186914186926%_)))
                          (let ((_%body186934%_ _%tl186916186931%_))
                            (cons '%#import _%body186934%_))))
                      (_%E186913186922%_)))))
          (_%E186912186936%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx186867%_)
        (let* ((_%e186868186878%_ _%stx186867%_)
               (_%E186870186882%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186868186878%_)))
               (_%E186869186906%_
                (lambda ()
                  (if (gx#stx-pair? _%e186868186878%_)
                      (let ((_%e186871186886%_
                             (gx#syntax-e _%e186868186878%_)))
                        (let ((_%hd186872186889%_ (##car _%e186871186886%_))
                              (_%tl186873186891%_ (##cdr _%e186871186886%_)))
                          (if (gx#stx-pair? _%tl186873186891%_)
                              (let ((_%e186874186894%_
                                     (gx#syntax-e _%tl186873186891%_)))
                                (let ((_%hd186875186897%_
                                       (##car _%e186874186894%_))
                                      (_%tl186876186899%_
                                       (##cdr _%e186874186894%_)))
                                  (let* ((_%hd186902%_ _%hd186875186897%_)
                                         (_%body186904%_ _%tl186876186899%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd186902%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body186904%_))))))
                              (_%E186870186882%_))))
                      (_%E186870186882%_)))))
          (_%E186869186906%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx186837%_)
        (let* ((_%e186838186845%_ _%stx186837%_)
               (_%E186840186849%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186838186845%_)))
               (_%E186839186863%_
                (lambda ()
                  (if (gx#stx-pair? _%e186838186845%_)
                      (let ((_%e186841186853%_
                             (gx#syntax-e _%e186838186845%_)))
                        (let ((_%hd186842186856%_ (##car _%e186841186853%_))
                              (_%tl186843186858%_ (##cdr _%e186841186853%_)))
                          (let ((_%body186861%_ _%tl186843186858%_))
                            (cons '%#export _%body186861%_))))
                      (_%E186840186849%_)))))
          (_%E186839186863%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx186807%_)
        (let* ((_%e186808186815%_ _%stx186807%_)
               (_%E186810186819%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186808186815%_)))
               (_%E186809186833%_
                (lambda ()
                  (if (gx#stx-pair? _%e186808186815%_)
                      (let ((_%e186811186823%_
                             (gx#syntax-e _%e186808186815%_)))
                        (let ((_%hd186812186826%_ (##car _%e186811186823%_))
                              (_%tl186813186828%_ (##cdr _%e186811186823%_)))
                          (let ((_%body186831%_ _%tl186813186828%_))
                            (cons '%#provide _%body186831%_))))
                      (_%E186810186819%_)))))
          (_%E186809186833%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx186777%_)
        (let* ((_%e186778186785%_ _%stx186777%_)
               (_%E186780186789%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186778186785%_)))
               (_%E186779186803%_
                (lambda ()
                  (if (gx#stx-pair? _%e186778186785%_)
                      (let ((_%e186781186793%_
                             (gx#syntax-e _%e186778186785%_)))
                        (let ((_%hd186782186796%_ (##car _%e186781186793%_))
                              (_%tl186783186798%_ (##cdr _%e186781186793%_)))
                          (let ((_%body186801%_ _%tl186783186798%_))
                            (cons '%#extern _%body186801%_))))
                      (_%E186780186789%_)))))
          (_%E186779186803%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx186723%_)
        (let* ((_%e186724186737%_ _%stx186723%_)
               (_%E186726186741%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186724186737%_)))
               (_%E186725186773%_
                (lambda ()
                  (if (gx#stx-pair? _%e186724186737%_)
                      (let ((_%e186727186745%_
                             (gx#syntax-e _%e186724186737%_)))
                        (let ((_%hd186728186748%_ (##car _%e186727186745%_))
                              (_%tl186729186750%_ (##cdr _%e186727186745%_)))
                          (if (gx#stx-pair? _%tl186729186750%_)
                              (let ((_%e186730186753%_
                                     (gx#syntax-e _%tl186729186750%_)))
                                (let ((_%hd186731186756%_
                                       (##car _%e186730186753%_))
                                      (_%tl186732186758%_
                                       (##cdr _%e186730186753%_)))
                                  (let ((_%hd186761%_ _%hd186731186756%_))
                                    (if (gx#stx-pair? _%tl186732186758%_)
                                        (let ((_%e186733186763%_
                                               (gx#syntax-e
                                                _%tl186732186758%_)))
                                          (let ((_%hd186734186766%_
                                                 (##car _%e186733186763%_))
                                                (_%tl186735186768%_
                                                 (##cdr _%e186733186763%_)))
                                            (let ((_%expr186771%_
                                                   _%hd186734186766%_))
                                              (if (gx#stx-null?
                                                   _%tl186735186768%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd186761%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr186771%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186726186741%_)))))
                                        (_%E186726186741%_)))))
                              (_%E186726186741%_))))
                      (_%E186726186741%_)))))
          (_%E186725186773%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx186668%_)
        (let* ((_%e186669186682%_ _%stx186668%_)
               (_%E186671186686%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186669186682%_)))
               (_%E186670186719%_
                (lambda ()
                  (if (gx#stx-pair? _%e186669186682%_)
                      (let ((_%e186672186690%_
                             (gx#syntax-e _%e186669186682%_)))
                        (let ((_%hd186673186693%_ (##car _%e186672186690%_))
                              (_%tl186674186695%_ (##cdr _%e186672186690%_)))
                          (if (gx#stx-pair? _%tl186674186695%_)
                              (let ((_%e186675186698%_
                                     (gx#syntax-e _%tl186674186695%_)))
                                (let ((_%hd186676186701%_
                                       (##car _%e186675186698%_))
                                      (_%tl186677186703%_
                                       (##cdr _%e186675186698%_)))
                                  (let ((_%hd186706%_ _%hd186676186701%_))
                                    (if (gx#stx-pair? _%tl186677186703%_)
                                        (let ((_%e186678186708%_
                                               (gx#syntax-e
                                                _%tl186677186703%_)))
                                          (let ((_%hd186679186711%_
                                                 (##car _%e186678186708%_))
                                                (_%tl186680186713%_
                                                 (##cdr _%e186678186708%_)))
                                            (let ((_%expr186716%_
                                                   _%hd186679186711%_))
                                              (if (gx#stx-null?
                                                   _%tl186680186713%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd186706%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr186716%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186671186686%_)))))
                                        (_%E186671186686%_)))))
                              (_%E186671186686%_))))
                      (_%E186671186686%_)))))
          (_%E186670186719%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx186638%_)
        (let* ((_%e186639186646%_ _%stx186638%_)
               (_%E186641186650%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186639186646%_)))
               (_%E186640186664%_
                (lambda ()
                  (if (gx#stx-pair? _%e186639186646%_)
                      (let ((_%e186642186654%_
                             (gx#syntax-e _%e186639186646%_)))
                        (let ((_%hd186643186657%_ (##car _%e186642186654%_))
                              (_%tl186644186659%_ (##cdr _%e186642186654%_)))
                          (let ((_%body186662%_ _%tl186644186659%_))
                            (cons '%#define-alias _%body186662%_))))
                      (_%E186641186650%_)))))
          (_%E186640186664%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx186608%_)
        (let* ((_%e186609186616%_ _%stx186608%_)
               (_%E186611186620%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186609186616%_)))
               (_%E186610186634%_
                (lambda ()
                  (if (gx#stx-pair? _%e186609186616%_)
                      (let ((_%e186612186624%_
                             (gx#syntax-e _%e186609186616%_)))
                        (let ((_%hd186613186627%_ (##car _%e186612186624%_))
                              (_%tl186614186629%_ (##cdr _%e186612186624%_)))
                          (let ((_%body186632%_ _%tl186614186629%_))
                            (cons '%#define-runtime _%body186632%_))))
                      (_%E186611186620%_)))))
          (_%E186610186634%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx186578%_)
        (let* ((_%e186579186586%_ _%stx186578%_)
               (_%E186581186590%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186579186586%_)))
               (_%E186580186604%_
                (lambda ()
                  (if (gx#stx-pair? _%e186579186586%_)
                      (let ((_%e186582186594%_
                             (gx#syntax-e _%e186579186586%_)))
                        (let ((_%hd186583186597%_ (##car _%e186582186594%_))
                              (_%tl186584186599%_ (##cdr _%e186582186594%_)))
                          (let ((_%decls186602%_ _%tl186584186599%_))
                            (cons '%#declare _%decls186602%_))))
                      (_%E186581186590%_)))))
          (_%E186580186604%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx186548%_)
        (let* ((_%e186549186556%_ _%stx186548%_)
               (_%E186551186560%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186549186556%_)))
               (_%E186550186574%_
                (lambda ()
                  (if (gx#stx-pair? _%e186549186556%_)
                      (let ((_%e186552186564%_
                             (gx#syntax-e _%e186549186556%_)))
                        (let ((_%hd186553186567%_ (##car _%e186552186564%_))
                              (_%tl186554186569%_ (##cdr _%e186552186564%_)))
                          (let ((_%clause186572%_ _%tl186554186569%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause186572%_)))))
                      (_%E186551186560%_)))))
          (_%E186550186574%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx186505%_)
        (let* ((_%e186506186516%_ _%stx186505%_)
               (_%E186508186520%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186506186516%_)))
               (_%E186507186544%_
                (lambda ()
                  (if (gx#stx-pair? _%e186506186516%_)
                      (let ((_%e186509186524%_
                             (gx#syntax-e _%e186506186516%_)))
                        (let ((_%hd186510186527%_ (##car _%e186509186524%_))
                              (_%tl186511186529%_ (##cdr _%e186509186524%_)))
                          (let ((_%hd186532%_ _%hd186510186527%_))
                            (if (gx#stx-pair? _%tl186511186529%_)
                                (let ((_%e186512186534%_
                                       (gx#syntax-e _%tl186511186529%_)))
                                  (let ((_%hd186513186537%_
                                         (##car _%e186512186534%_))
                                        (_%tl186514186539%_
                                         (##cdr _%e186512186534%_)))
                                    (let ((_%body186542%_ _%hd186513186537%_))
                                      (if (gx#stx-null? _%tl186514186539%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd186532%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body186542%_)
                                                      '()))
                                          (_%E186508186520%_)))))
                                (_%E186508186520%_)))))
                      (_%E186508186520%_)))))
          (_%E186507186544%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx186475%_)
        (let* ((_%e186476186483%_ _%stx186475%_)
               (_%E186478186487%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186476186483%_)))
               (_%E186477186501%_
                (lambda ()
                  (if (gx#stx-pair? _%e186476186483%_)
                      (let ((_%e186479186491%_
                             (gx#syntax-e _%e186476186483%_)))
                        (let ((_%hd186480186494%_ (##car _%e186479186491%_))
                              (_%tl186481186496%_ (##cdr _%e186479186491%_)))
                          (let ((_%clauses186499%_ _%tl186481186496%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses186499%_)))))
                      (_%E186478186487%_)))))
          (_%E186477186501%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx186410%_ _%form186411%_)
        (let* ((_%e186412186425%_ _%stx186410%_)
               (_%E186414186429%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186412186425%_)))
               (_%E186413186461%_
                (lambda ()
                  (if (gx#stx-pair? _%e186412186425%_)
                      (let ((_%e186415186433%_
                             (gx#syntax-e _%e186412186425%_)))
                        (let ((_%hd186416186436%_ (##car _%e186415186433%_))
                              (_%tl186417186438%_ (##cdr _%e186415186433%_)))
                          (if (gx#stx-pair? _%tl186417186438%_)
                              (let ((_%e186418186441%_
                                     (gx#syntax-e _%tl186417186438%_)))
                                (let ((_%hd186419186444%_
                                       (##car _%e186418186441%_))
                                      (_%tl186420186446%_
                                       (##cdr _%e186418186441%_)))
                                  (let ((_%hd186449%_ _%hd186419186444%_))
                                    (if (gx#stx-pair? _%tl186420186446%_)
                                        (let ((_%e186421186451%_
                                               (gx#syntax-e
                                                _%tl186420186446%_)))
                                          (let ((_%hd186422186454%_
                                                 (##car _%e186421186451%_))
                                                (_%tl186423186456%_
                                                 (##cdr _%e186421186451%_)))
                                            (let ((_%body186459%_
                                                   _%hd186422186454%_))
                                              (if (gx#stx-null?
                                                   _%tl186423186456%_)
                                                  (cons _%form186411%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd186449%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body186459%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186414186429%_)))))
                                        (_%E186414186429%_)))))
                              (_%E186414186429%_))))
                      (_%E186414186429%_)))))
          (_%E186413186461%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx186468%_)
        (let ((_%form186470%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx186468%_ _%form186470%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g187293_
        (let ((_g187294_ (##length _g187293_)))
          (cond ((##fx= _g187294_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g187293_))
                ((##fx= _g187294_ 2)
                 (apply gx#core-compile-top-let-values%__% _g187293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g187293_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx186407%_)
        (gx#core-compile-top-let-values%__% _%stx186407%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx186405%_)
        (gx#core-compile-top-let-values%__% _%stx186405%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx186364%_)
        (let* ((_%e186365186375%_ _%stx186364%_)
               (_%E186367186379%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186365186375%_)))
               (_%E186366186401%_
                (lambda ()
                  (if (gx#stx-pair? _%e186365186375%_)
                      (let ((_%e186368186383%_
                             (gx#syntax-e _%e186365186375%_)))
                        (let ((_%hd186369186386%_ (##car _%e186368186383%_))
                              (_%tl186370186388%_ (##cdr _%e186368186383%_)))
                          (if (gx#stx-pair? _%tl186370186388%_)
                              (let ((_%e186371186391%_
                                     (gx#syntax-e _%tl186370186388%_)))
                                (let ((_%hd186372186394%_
                                       (##car _%e186371186391%_))
                                      (_%tl186373186396%_
                                       (##cdr _%e186371186391%_)))
                                  (let ((_%e186399%_ _%hd186372186394%_))
                                    (if (gx#stx-null? _%tl186373186396%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e186399%_)
                                                    '()))
                                        (_%E186367186379%_)))))
                              (_%E186367186379%_))))
                      (_%E186367186379%_)))))
          (_%E186366186401%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx186323%_)
        (let* ((_%e186324186334%_ _%stx186323%_)
               (_%E186326186338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186324186334%_)))
               (_%E186325186360%_
                (lambda ()
                  (if (gx#stx-pair? _%e186324186334%_)
                      (let ((_%e186327186342%_
                             (gx#syntax-e _%e186324186334%_)))
                        (let ((_%hd186328186345%_ (##car _%e186327186342%_))
                              (_%tl186329186347%_ (##cdr _%e186327186342%_)))
                          (if (gx#stx-pair? _%tl186329186347%_)
                              (let ((_%e186330186350%_
                                     (gx#syntax-e _%tl186329186347%_)))
                                (let ((_%hd186331186353%_
                                       (##car _%e186330186350%_))
                                      (_%tl186332186355%_
                                       (##cdr _%e186330186350%_)))
                                  (let ((_%e186358%_ _%hd186331186353%_))
                                    (if (gx#stx-null? _%tl186332186355%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e186358%_)
                                                    '()))
                                        (_%E186326186338%_)))))
                              (_%E186326186338%_))))
                      (_%E186326186338%_)))))
          (_%E186325186360%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx186280%_)
        (let* ((_%e186281186291%_ _%stx186280%_)
               (_%E186283186295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186281186291%_)))
               (_%E186282186319%_
                (lambda ()
                  (if (gx#stx-pair? _%e186281186291%_)
                      (let ((_%e186284186299%_
                             (gx#syntax-e _%e186281186291%_)))
                        (let ((_%hd186285186302%_ (##car _%e186284186299%_))
                              (_%tl186286186304%_ (##cdr _%e186284186299%_)))
                          (if (gx#stx-pair? _%tl186286186304%_)
                              (let ((_%e186287186307%_
                                     (gx#syntax-e _%tl186286186304%_)))
                                (let ((_%hd186288186310%_
                                       (##car _%e186287186307%_))
                                      (_%tl186289186312%_
                                       (##cdr _%e186287186307%_)))
                                  (let* ((_%rator186315%_ _%hd186288186310%_)
                                         (_%args186317%_ _%tl186289186312%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator186315%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args186317%_))))))
                              (_%E186283186295%_))))
                      (_%E186283186295%_)))))
          (_%E186282186319%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx186213%_)
        (let* ((_%e186214186230%_ _%stx186213%_)
               (_%E186216186234%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186214186230%_)))
               (_%E186215186276%_
                (lambda ()
                  (if (gx#stx-pair? _%e186214186230%_)
                      (let ((_%e186217186238%_
                             (gx#syntax-e _%e186214186230%_)))
                        (let ((_%hd186218186241%_ (##car _%e186217186238%_))
                              (_%tl186219186243%_ (##cdr _%e186217186238%_)))
                          (if (gx#stx-pair? _%tl186219186243%_)
                              (let ((_%e186220186246%_
                                     (gx#syntax-e _%tl186219186243%_)))
                                (let ((_%hd186221186249%_
                                       (##car _%e186220186246%_))
                                      (_%tl186222186251%_
                                       (##cdr _%e186220186246%_)))
                                  (let ((_%test186254%_ _%hd186221186249%_))
                                    (if (gx#stx-pair? _%tl186222186251%_)
                                        (let ((_%e186223186256%_
                                               (gx#syntax-e
                                                _%tl186222186251%_)))
                                          (let ((_%hd186224186259%_
                                                 (##car _%e186223186256%_))
                                                (_%tl186225186261%_
                                                 (##cdr _%e186223186256%_)))
                                            (let ((_%K186264%_
                                                   _%hd186224186259%_))
                                              (if (gx#stx-pair?
                                                   _%tl186225186261%_)
                                                  (let ((_%e186226186266%_
                                                         (gx#syntax-e
                                                          _%tl186225186261%_)))
                                                    (let ((_%hd186227186269%_
                                                           (##car _%e186226186266%_))
                                                          (_%tl186228186271%_
                                                           (##cdr _%e186226186266%_)))
                                                      (let ((_%E186274%_
                                                             _%hd186227186269%_))
                                                        (if (gx#stx-null?
                                                             _%tl186228186271%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test186254%_)
                                (cons (gx#core-compile-top-syntax _%K186264%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E186274%_)
                                            '()))))
                    (_%E186216186234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186216186234%_)))))
                                        (_%E186216186234%_)))))
                              (_%E186216186234%_))))
                      (_%E186216186234%_)))))
          (_%E186215186276%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx186172%_)
        (let* ((_%e186173186183%_ _%stx186172%_)
               (_%E186175186187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186173186183%_)))
               (_%E186174186209%_
                (lambda ()
                  (if (gx#stx-pair? _%e186173186183%_)
                      (let ((_%e186176186191%_
                             (gx#syntax-e _%e186173186183%_)))
                        (let ((_%hd186177186194%_ (##car _%e186176186191%_))
                              (_%tl186178186196%_ (##cdr _%e186176186191%_)))
                          (if (gx#stx-pair? _%tl186178186196%_)
                              (let ((_%e186179186199%_
                                     (gx#syntax-e _%tl186178186196%_)))
                                (let ((_%hd186180186202%_
                                       (##car _%e186179186199%_))
                                      (_%tl186181186204%_
                                       (##cdr _%e186179186199%_)))
                                  (let ((_%id186207%_ _%hd186180186202%_))
                                    (if (gx#stx-null? _%tl186181186204%_)
                                        (if (gx#identifier? _%id186207%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id186207%_)
                                                        '()))
                                            (_%E186175186187%_))
                                        (_%E186175186187%_)))))
                              (_%E186175186187%_))))
                      (_%E186175186187%_)))))
          (_%E186174186209%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx186118%_)
        (let* ((_%e186119186132%_ _%stx186118%_)
               (_%E186121186136%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186119186132%_)))
               (_%E186120186168%_
                (lambda ()
                  (if (gx#stx-pair? _%e186119186132%_)
                      (let ((_%e186122186140%_
                             (gx#syntax-e _%e186119186132%_)))
                        (let ((_%hd186123186143%_ (##car _%e186122186140%_))
                              (_%tl186124186145%_ (##cdr _%e186122186140%_)))
                          (if (gx#stx-pair? _%tl186124186145%_)
                              (let ((_%e186125186148%_
                                     (gx#syntax-e _%tl186124186145%_)))
                                (let ((_%hd186126186151%_
                                       (##car _%e186125186148%_))
                                      (_%tl186127186153%_
                                       (##cdr _%e186125186148%_)))
                                  (let ((_%id186156%_ _%hd186126186151%_))
                                    (if (gx#stx-pair? _%tl186127186153%_)
                                        (let ((_%e186128186158%_
                                               (gx#syntax-e
                                                _%tl186127186153%_)))
                                          (let ((_%hd186129186161%_
                                                 (##car _%e186128186158%_))
                                                (_%tl186130186163%_
                                                 (##cdr _%e186128186158%_)))
                                            (let ((_%expr186166%_
                                                   _%hd186129186161%_))
                                              (if (gx#stx-null?
                                                   _%tl186130186163%_)
                                                  (if (gx#identifier?
                                                       _%id186156%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id186156%_)
                          (cons (gx#core-compile-top-syntax _%expr186166%_)
                                '())))
              (_%E186121186136%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186121186136%_)))))
                                        (_%E186121186136%_)))))
                              (_%E186121186136%_))))
                      (_%E186121186136%_)))))
          (_%E186120186168%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id186112%_)
        (let ((_%$e186114%_ (gx#resolve-identifier__0 _%id186112%_)))
          (if _%$e186114%_
              (##unchecked-structure-ref _%$e186114%_ '1 '#f '#f)
              _%id186112%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd186110%_)
        (if (gx#identifier? _%hd186110%_)
            (gx#core-compile-top-runtime-ref _%hd186110%_)
            '#f)))))
