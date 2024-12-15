(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1734280447)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx131363%_)
        (let* ((_%e131364131371%_ _%stx131363%_)
               (_%E131366131375%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131364131371%_)))
               (_%E131365131389%_
                (lambda ()
                  (if (gx#stx-pair? _%e131364131371%_)
                      (let ((_%e131367131379%_
                             (gx#syntax-e _%e131364131371%_)))
                        (let ((_%hd131368131382%_ (##car _%e131367131379%_))
                              (_%tl131369131384%_ (##cdr _%e131367131379%_)))
                          (let* ((_%form131387%_ _%hd131368131382%_)
                                 (__self131392
                                  (gx#syntax-local-e__0 _%form131387%_))
                                 (__method131393
                                  (__method-ref
                                   __self131392
                                   'compile-top-syntax)))
                            (if __method131393
                                (__method131393 __self131392 _%stx131363%_)
                                (begin
                                  (error '"Missing method"
                                         __self131392
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E131366131375%_)))))
          (_%E131365131389%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self130206131309%_ _%stx131311%_)
        (let* ((_%self131313%_ _%self130206131309%_)
               (_%self131315%_ _%self131313%_)
               (_%self131324131332%_ _%self131315%_)
               (_%E131326131336%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131324131332%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K131327131349%_
                (lambda (_%K131339%_)
                  (let ((_%$e131341%_ (gx#stx-source _%stx131311%_)))
                    (if _%$e131341%_
                        ((lambda (_%g131343131345%_)
                           (gx#stx-wrap-source
                            (_%K131339%_ _%stx131311%_)
                            _%g131343131345%_))
                         _%$e131341%_)
                        (_%K131339%_ _%stx131311%_)))))
               (_%e131328131352%_
                (##unchecked-structure-ref _%self131324131332%_ '1 '#f '#f))
               (_%e131329131355%_
                (##unchecked-structure-ref _%self131324131332%_ '2 '#f '#f))
               (_%e131330131358%_
                (##unchecked-structure-ref _%self131324131332%_ '3 '#f '#f))
               (_%K131361%_ _%e131330131358%_))
          (_%K131327131349%_ _%K131361%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx131183%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx131183%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx131153%_)
        (let* ((_%e131154131161%_ _%stx131153%_)
               (_%E131156131165%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131154131161%_)))
               (_%E131155131179%_
                (lambda ()
                  (if (gx#stx-pair? _%e131154131161%_)
                      (let ((_%e131157131169%_
                             (gx#syntax-e _%e131154131161%_)))
                        (let ((_%hd131158131172%_ (##car _%e131157131169%_))
                              (_%tl131159131174%_ (##cdr _%e131157131169%_)))
                          (let ((_%body131177%_ _%tl131159131174%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body131177%_)))))
                      (_%E131156131165%_)))))
          (_%E131155131179%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx131122%_)
        (let* ((_%e131123131130%_ _%stx131122%_)
               (_%E131125131134%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131123131130%_)))
               (_%E131124131149%_
                (lambda ()
                  (if (gx#stx-pair? _%e131123131130%_)
                      (let ((_%e131126131138%_
                             (gx#syntax-e _%e131123131130%_)))
                        (let ((_%hd131127131141%_ (##car _%e131126131138%_))
                              (_%tl131128131143%_ (##cdr _%e131126131138%_)))
                          (let ((_%body131146%_ _%tl131128131143%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body131146%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E131125131134%_)))))
          (_%E131124131149%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx131092%_)
        (let* ((_%e131093131100%_ _%stx131092%_)
               (_%E131095131104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131093131100%_)))
               (_%E131094131118%_
                (lambda ()
                  (if (gx#stx-pair? _%e131093131100%_)
                      (let ((_%e131096131108%_
                             (gx#syntax-e _%e131093131100%_)))
                        (let ((_%hd131097131111%_ (##car _%e131096131108%_))
                              (_%tl131098131113%_ (##cdr _%e131096131108%_)))
                          (let ((_%body131116%_ _%tl131098131113%_))
                            (cons '%#begin-foreign _%body131116%_))))
                      (_%E131095131104%_)))))
          (_%E131094131118%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx131038%_)
        (let* ((_%e131039131052%_ _%stx131038%_)
               (_%E131041131056%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131039131052%_)))
               (_%E131040131088%_
                (lambda ()
                  (if (gx#stx-pair? _%e131039131052%_)
                      (let ((_%e131042131060%_
                             (gx#syntax-e _%e131039131052%_)))
                        (let ((_%hd131043131063%_ (##car _%e131042131060%_))
                              (_%tl131044131065%_ (##cdr _%e131042131060%_)))
                          (if (gx#stx-pair? _%tl131044131065%_)
                              (let ((_%e131045131068%_
                                     (gx#syntax-e _%tl131044131065%_)))
                                (let ((_%hd131046131071%_
                                       (##car _%e131045131068%_))
                                      (_%tl131047131073%_
                                       (##cdr _%e131045131068%_)))
                                  (let ((_%ann131076%_ _%hd131046131071%_))
                                    (if (gx#stx-pair? _%tl131047131073%_)
                                        (let ((_%e131048131078%_
                                               (gx#syntax-e
                                                _%tl131047131073%_)))
                                          (let ((_%hd131049131081%_
                                                 (##car _%e131048131078%_))
                                                (_%tl131050131083%_
                                                 (##cdr _%e131048131078%_)))
                                            (let ((_%expr131086%_
                                                   _%hd131049131081%_))
                                              (if (gx#stx-null?
                                                   _%tl131050131083%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr131086%_)
                                                  (_%E131041131056%_)))))
                                        (_%E131041131056%_)))))
                              (_%E131041131056%_))))
                      (_%E131041131056%_)))))
          (_%E131040131088%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx131008%_)
        (let* ((_%e131009131016%_ _%stx131008%_)
               (_%E131011131020%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131009131016%_)))
               (_%E131010131034%_
                (lambda ()
                  (if (gx#stx-pair? _%e131009131016%_)
                      (let ((_%e131012131024%_
                             (gx#syntax-e _%e131009131016%_)))
                        (let ((_%hd131013131027%_ (##car _%e131012131024%_))
                              (_%tl131014131029%_ (##cdr _%e131012131024%_)))
                          (let ((_%body131032%_ _%tl131014131029%_))
                            (cons '%#import _%body131032%_))))
                      (_%E131011131020%_)))))
          (_%E131010131034%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx130965%_)
        (let* ((_%e130966130976%_ _%stx130965%_)
               (_%E130968130980%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130966130976%_)))
               (_%E130967131004%_
                (lambda ()
                  (if (gx#stx-pair? _%e130966130976%_)
                      (let ((_%e130969130984%_
                             (gx#syntax-e _%e130966130976%_)))
                        (let ((_%hd130970130987%_ (##car _%e130969130984%_))
                              (_%tl130971130989%_ (##cdr _%e130969130984%_)))
                          (if (gx#stx-pair? _%tl130971130989%_)
                              (let ((_%e130972130992%_
                                     (gx#syntax-e _%tl130971130989%_)))
                                (let ((_%hd130973130995%_
                                       (##car _%e130972130992%_))
                                      (_%tl130974130997%_
                                       (##cdr _%e130972130992%_)))
                                  (let* ((_%hd131000%_ _%hd130973130995%_)
                                         (_%body131002%_ _%tl130974130997%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd131000%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body131002%_))))))
                              (_%E130968130980%_))))
                      (_%E130968130980%_)))))
          (_%E130967131004%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx130935%_)
        (let* ((_%e130936130943%_ _%stx130935%_)
               (_%E130938130947%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130936130943%_)))
               (_%E130937130961%_
                (lambda ()
                  (if (gx#stx-pair? _%e130936130943%_)
                      (let ((_%e130939130951%_
                             (gx#syntax-e _%e130936130943%_)))
                        (let ((_%hd130940130954%_ (##car _%e130939130951%_))
                              (_%tl130941130956%_ (##cdr _%e130939130951%_)))
                          (let ((_%body130959%_ _%tl130941130956%_))
                            (cons '%#export _%body130959%_))))
                      (_%E130938130947%_)))))
          (_%E130937130961%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx130905%_)
        (let* ((_%e130906130913%_ _%stx130905%_)
               (_%E130908130917%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130906130913%_)))
               (_%E130907130931%_
                (lambda ()
                  (if (gx#stx-pair? _%e130906130913%_)
                      (let ((_%e130909130921%_
                             (gx#syntax-e _%e130906130913%_)))
                        (let ((_%hd130910130924%_ (##car _%e130909130921%_))
                              (_%tl130911130926%_ (##cdr _%e130909130921%_)))
                          (let ((_%body130929%_ _%tl130911130926%_))
                            (cons '%#provide _%body130929%_))))
                      (_%E130908130917%_)))))
          (_%E130907130931%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx130875%_)
        (let* ((_%e130876130883%_ _%stx130875%_)
               (_%E130878130887%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130876130883%_)))
               (_%E130877130901%_
                (lambda ()
                  (if (gx#stx-pair? _%e130876130883%_)
                      (let ((_%e130879130891%_
                             (gx#syntax-e _%e130876130883%_)))
                        (let ((_%hd130880130894%_ (##car _%e130879130891%_))
                              (_%tl130881130896%_ (##cdr _%e130879130891%_)))
                          (let ((_%body130899%_ _%tl130881130896%_))
                            (cons '%#extern _%body130899%_))))
                      (_%E130878130887%_)))))
          (_%E130877130901%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx130821%_)
        (let* ((_%e130822130835%_ _%stx130821%_)
               (_%E130824130839%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130822130835%_)))
               (_%E130823130871%_
                (lambda ()
                  (if (gx#stx-pair? _%e130822130835%_)
                      (let ((_%e130825130843%_
                             (gx#syntax-e _%e130822130835%_)))
                        (let ((_%hd130826130846%_ (##car _%e130825130843%_))
                              (_%tl130827130848%_ (##cdr _%e130825130843%_)))
                          (if (gx#stx-pair? _%tl130827130848%_)
                              (let ((_%e130828130851%_
                                     (gx#syntax-e _%tl130827130848%_)))
                                (let ((_%hd130829130854%_
                                       (##car _%e130828130851%_))
                                      (_%tl130830130856%_
                                       (##cdr _%e130828130851%_)))
                                  (let ((_%hd130859%_ _%hd130829130854%_))
                                    (if (gx#stx-pair? _%tl130830130856%_)
                                        (let ((_%e130831130861%_
                                               (gx#syntax-e
                                                _%tl130830130856%_)))
                                          (let ((_%hd130832130864%_
                                                 (##car _%e130831130861%_))
                                                (_%tl130833130866%_
                                                 (##cdr _%e130831130861%_)))
                                            (let ((_%expr130869%_
                                                   _%hd130832130864%_))
                                              (if (gx#stx-null?
                                                   _%tl130833130866%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd130859%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr130869%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130824130839%_)))))
                                        (_%E130824130839%_)))))
                              (_%E130824130839%_))))
                      (_%E130824130839%_)))))
          (_%E130823130871%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx130766%_)
        (let* ((_%e130767130780%_ _%stx130766%_)
               (_%E130769130784%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130767130780%_)))
               (_%E130768130817%_
                (lambda ()
                  (if (gx#stx-pair? _%e130767130780%_)
                      (let ((_%e130770130788%_
                             (gx#syntax-e _%e130767130780%_)))
                        (let ((_%hd130771130791%_ (##car _%e130770130788%_))
                              (_%tl130772130793%_ (##cdr _%e130770130788%_)))
                          (if (gx#stx-pair? _%tl130772130793%_)
                              (let ((_%e130773130796%_
                                     (gx#syntax-e _%tl130772130793%_)))
                                (let ((_%hd130774130799%_
                                       (##car _%e130773130796%_))
                                      (_%tl130775130801%_
                                       (##cdr _%e130773130796%_)))
                                  (let ((_%hd130804%_ _%hd130774130799%_))
                                    (if (gx#stx-pair? _%tl130775130801%_)
                                        (let ((_%e130776130806%_
                                               (gx#syntax-e
                                                _%tl130775130801%_)))
                                          (let ((_%hd130777130809%_
                                                 (##car _%e130776130806%_))
                                                (_%tl130778130811%_
                                                 (##cdr _%e130776130806%_)))
                                            (let ((_%expr130814%_
                                                   _%hd130777130809%_))
                                              (if (gx#stx-null?
                                                   _%tl130778130811%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd130804%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr130814%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130769130784%_)))))
                                        (_%E130769130784%_)))))
                              (_%E130769130784%_))))
                      (_%E130769130784%_)))))
          (_%E130768130817%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx130736%_)
        (let* ((_%e130737130744%_ _%stx130736%_)
               (_%E130739130748%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130737130744%_)))
               (_%E130738130762%_
                (lambda ()
                  (if (gx#stx-pair? _%e130737130744%_)
                      (let ((_%e130740130752%_
                             (gx#syntax-e _%e130737130744%_)))
                        (let ((_%hd130741130755%_ (##car _%e130740130752%_))
                              (_%tl130742130757%_ (##cdr _%e130740130752%_)))
                          (let ((_%body130760%_ _%tl130742130757%_))
                            (cons '%#define-alias _%body130760%_))))
                      (_%E130739130748%_)))))
          (_%E130738130762%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx130706%_)
        (let* ((_%e130707130714%_ _%stx130706%_)
               (_%E130709130718%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130707130714%_)))
               (_%E130708130732%_
                (lambda ()
                  (if (gx#stx-pair? _%e130707130714%_)
                      (let ((_%e130710130722%_
                             (gx#syntax-e _%e130707130714%_)))
                        (let ((_%hd130711130725%_ (##car _%e130710130722%_))
                              (_%tl130712130727%_ (##cdr _%e130710130722%_)))
                          (let ((_%body130730%_ _%tl130712130727%_))
                            (cons '%#define-runtime _%body130730%_))))
                      (_%E130709130718%_)))))
          (_%E130708130732%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx130676%_)
        (let* ((_%e130677130684%_ _%stx130676%_)
               (_%E130679130688%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130677130684%_)))
               (_%E130678130702%_
                (lambda ()
                  (if (gx#stx-pair? _%e130677130684%_)
                      (let ((_%e130680130692%_
                             (gx#syntax-e _%e130677130684%_)))
                        (let ((_%hd130681130695%_ (##car _%e130680130692%_))
                              (_%tl130682130697%_ (##cdr _%e130680130692%_)))
                          (let ((_%decls130700%_ _%tl130682130697%_))
                            (cons '%#declare _%decls130700%_))))
                      (_%E130679130688%_)))))
          (_%E130678130702%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx130646%_)
        (let* ((_%e130647130654%_ _%stx130646%_)
               (_%E130649130658%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130647130654%_)))
               (_%E130648130672%_
                (lambda ()
                  (if (gx#stx-pair? _%e130647130654%_)
                      (let ((_%e130650130662%_
                             (gx#syntax-e _%e130647130654%_)))
                        (let ((_%hd130651130665%_ (##car _%e130650130662%_))
                              (_%tl130652130667%_ (##cdr _%e130650130662%_)))
                          (let ((_%clause130670%_ _%tl130652130667%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause130670%_)))))
                      (_%E130649130658%_)))))
          (_%E130648130672%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx130603%_)
        (let* ((_%e130604130614%_ _%stx130603%_)
               (_%E130606130618%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130604130614%_)))
               (_%E130605130642%_
                (lambda ()
                  (if (gx#stx-pair? _%e130604130614%_)
                      (let ((_%e130607130622%_
                             (gx#syntax-e _%e130604130614%_)))
                        (let ((_%hd130608130625%_ (##car _%e130607130622%_))
                              (_%tl130609130627%_ (##cdr _%e130607130622%_)))
                          (let ((_%hd130630%_ _%hd130608130625%_))
                            (if (gx#stx-pair? _%tl130609130627%_)
                                (let ((_%e130610130632%_
                                       (gx#syntax-e _%tl130609130627%_)))
                                  (let ((_%hd130611130635%_
                                         (##car _%e130610130632%_))
                                        (_%tl130612130637%_
                                         (##cdr _%e130610130632%_)))
                                    (let ((_%body130640%_ _%hd130611130635%_))
                                      (if (gx#stx-null? _%tl130612130637%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd130630%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body130640%_)
                                                      '()))
                                          (_%E130606130618%_)))))
                                (_%E130606130618%_)))))
                      (_%E130606130618%_)))))
          (_%E130605130642%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx130573%_)
        (let* ((_%e130574130581%_ _%stx130573%_)
               (_%E130576130585%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130574130581%_)))
               (_%E130575130599%_
                (lambda ()
                  (if (gx#stx-pair? _%e130574130581%_)
                      (let ((_%e130577130589%_
                             (gx#syntax-e _%e130574130581%_)))
                        (let ((_%hd130578130592%_ (##car _%e130577130589%_))
                              (_%tl130579130594%_ (##cdr _%e130577130589%_)))
                          (let ((_%clauses130597%_ _%tl130579130594%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses130597%_)))))
                      (_%E130576130585%_)))))
          (_%E130575130599%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx130508%_ _%form130509%_)
        (let* ((_%e130510130523%_ _%stx130508%_)
               (_%E130512130527%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130510130523%_)))
               (_%E130511130559%_
                (lambda ()
                  (if (gx#stx-pair? _%e130510130523%_)
                      (let ((_%e130513130531%_
                             (gx#syntax-e _%e130510130523%_)))
                        (let ((_%hd130514130534%_ (##car _%e130513130531%_))
                              (_%tl130515130536%_ (##cdr _%e130513130531%_)))
                          (if (gx#stx-pair? _%tl130515130536%_)
                              (let ((_%e130516130539%_
                                     (gx#syntax-e _%tl130515130536%_)))
                                (let ((_%hd130517130542%_
                                       (##car _%e130516130539%_))
                                      (_%tl130518130544%_
                                       (##cdr _%e130516130539%_)))
                                  (let ((_%hd130547%_ _%hd130517130542%_))
                                    (if (gx#stx-pair? _%tl130518130544%_)
                                        (let ((_%e130519130549%_
                                               (gx#syntax-e
                                                _%tl130518130544%_)))
                                          (let ((_%hd130520130552%_
                                                 (##car _%e130519130549%_))
                                                (_%tl130521130554%_
                                                 (##cdr _%e130519130549%_)))
                                            (let ((_%body130557%_
                                                   _%hd130520130552%_))
                                              (if (gx#stx-null?
                                                   _%tl130521130554%_)
                                                  (cons _%form130509%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd130547%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body130557%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130512130527%_)))))
                                        (_%E130512130527%_)))))
                              (_%E130512130527%_))))
                      (_%E130512130527%_)))))
          (_%E130511130559%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx130566%_)
        (let ((_%form130568%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx130566%_ _%form130568%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g131395_
        (let ((_g131394_ (##length _g131395_)))
          (cond ((##fx= _g131394_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g131395_))
                ((##fx= _g131394_ 2)
                 (apply gx#core-compile-top-let-values%__% _g131395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g131395_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx130505%_)
        (gx#core-compile-top-let-values%__% _%stx130505%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx130503%_)
        (gx#core-compile-top-let-values%__% _%stx130503%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx130462%_)
        (let* ((_%e130463130473%_ _%stx130462%_)
               (_%E130465130477%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130463130473%_)))
               (_%E130464130499%_
                (lambda ()
                  (if (gx#stx-pair? _%e130463130473%_)
                      (let ((_%e130466130481%_
                             (gx#syntax-e _%e130463130473%_)))
                        (let ((_%hd130467130484%_ (##car _%e130466130481%_))
                              (_%tl130468130486%_ (##cdr _%e130466130481%_)))
                          (if (gx#stx-pair? _%tl130468130486%_)
                              (let ((_%e130469130489%_
                                     (gx#syntax-e _%tl130468130486%_)))
                                (let ((_%hd130470130492%_
                                       (##car _%e130469130489%_))
                                      (_%tl130471130494%_
                                       (##cdr _%e130469130489%_)))
                                  (let ((_%e130497%_ _%hd130470130492%_))
                                    (if (gx#stx-null? _%tl130471130494%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e130497%_)
                                                    '()))
                                        (_%E130465130477%_)))))
                              (_%E130465130477%_))))
                      (_%E130465130477%_)))))
          (_%E130464130499%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx130421%_)
        (let* ((_%e130422130432%_ _%stx130421%_)
               (_%E130424130436%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130422130432%_)))
               (_%E130423130458%_
                (lambda ()
                  (if (gx#stx-pair? _%e130422130432%_)
                      (let ((_%e130425130440%_
                             (gx#syntax-e _%e130422130432%_)))
                        (let ((_%hd130426130443%_ (##car _%e130425130440%_))
                              (_%tl130427130445%_ (##cdr _%e130425130440%_)))
                          (if (gx#stx-pair? _%tl130427130445%_)
                              (let ((_%e130428130448%_
                                     (gx#syntax-e _%tl130427130445%_)))
                                (let ((_%hd130429130451%_
                                       (##car _%e130428130448%_))
                                      (_%tl130430130453%_
                                       (##cdr _%e130428130448%_)))
                                  (let ((_%e130456%_ _%hd130429130451%_))
                                    (if (gx#stx-null? _%tl130430130453%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e130456%_)
                                                    '()))
                                        (_%E130424130436%_)))))
                              (_%E130424130436%_))))
                      (_%E130424130436%_)))))
          (_%E130423130458%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx130378%_)
        (let* ((_%e130379130389%_ _%stx130378%_)
               (_%E130381130393%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130379130389%_)))
               (_%E130380130417%_
                (lambda ()
                  (if (gx#stx-pair? _%e130379130389%_)
                      (let ((_%e130382130397%_
                             (gx#syntax-e _%e130379130389%_)))
                        (let ((_%hd130383130400%_ (##car _%e130382130397%_))
                              (_%tl130384130402%_ (##cdr _%e130382130397%_)))
                          (if (gx#stx-pair? _%tl130384130402%_)
                              (let ((_%e130385130405%_
                                     (gx#syntax-e _%tl130384130402%_)))
                                (let ((_%hd130386130408%_
                                       (##car _%e130385130405%_))
                                      (_%tl130387130410%_
                                       (##cdr _%e130385130405%_)))
                                  (let* ((_%rator130413%_ _%hd130386130408%_)
                                         (_%args130415%_ _%tl130387130410%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator130413%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args130415%_))))))
                              (_%E130381130393%_))))
                      (_%E130381130393%_)))))
          (_%E130380130417%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx130311%_)
        (let* ((_%e130312130328%_ _%stx130311%_)
               (_%E130314130332%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130312130328%_)))
               (_%E130313130374%_
                (lambda ()
                  (if (gx#stx-pair? _%e130312130328%_)
                      (let ((_%e130315130336%_
                             (gx#syntax-e _%e130312130328%_)))
                        (let ((_%hd130316130339%_ (##car _%e130315130336%_))
                              (_%tl130317130341%_ (##cdr _%e130315130336%_)))
                          (if (gx#stx-pair? _%tl130317130341%_)
                              (let ((_%e130318130344%_
                                     (gx#syntax-e _%tl130317130341%_)))
                                (let ((_%hd130319130347%_
                                       (##car _%e130318130344%_))
                                      (_%tl130320130349%_
                                       (##cdr _%e130318130344%_)))
                                  (let ((_%test130352%_ _%hd130319130347%_))
                                    (if (gx#stx-pair? _%tl130320130349%_)
                                        (let ((_%e130321130354%_
                                               (gx#syntax-e
                                                _%tl130320130349%_)))
                                          (let ((_%hd130322130357%_
                                                 (##car _%e130321130354%_))
                                                (_%tl130323130359%_
                                                 (##cdr _%e130321130354%_)))
                                            (let ((_%K130362%_
                                                   _%hd130322130357%_))
                                              (if (gx#stx-pair?
                                                   _%tl130323130359%_)
                                                  (let ((_%e130324130364%_
                                                         (gx#syntax-e
                                                          _%tl130323130359%_)))
                                                    (let ((_%hd130325130367%_
                                                           (##car _%e130324130364%_))
                                                          (_%tl130326130369%_
                                                           (##cdr _%e130324130364%_)))
                                                      (let ((_%E130372%_
                                                             _%hd130325130367%_))
                                                        (if (gx#stx-null?
                                                             _%tl130326130369%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test130352%_)
                                (cons (gx#core-compile-top-syntax _%K130362%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E130372%_)
                                            '()))))
                    (_%E130314130332%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130314130332%_)))))
                                        (_%E130314130332%_)))))
                              (_%E130314130332%_))))
                      (_%E130314130332%_)))))
          (_%E130313130374%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx130270%_)
        (let* ((_%e130271130281%_ _%stx130270%_)
               (_%E130273130285%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130271130281%_)))
               (_%E130272130307%_
                (lambda ()
                  (if (gx#stx-pair? _%e130271130281%_)
                      (let ((_%e130274130289%_
                             (gx#syntax-e _%e130271130281%_)))
                        (let ((_%hd130275130292%_ (##car _%e130274130289%_))
                              (_%tl130276130294%_ (##cdr _%e130274130289%_)))
                          (if (gx#stx-pair? _%tl130276130294%_)
                              (let ((_%e130277130297%_
                                     (gx#syntax-e _%tl130276130294%_)))
                                (let ((_%hd130278130300%_
                                       (##car _%e130277130297%_))
                                      (_%tl130279130302%_
                                       (##cdr _%e130277130297%_)))
                                  (let ((_%id130305%_ _%hd130278130300%_))
                                    (if (gx#stx-null? _%tl130279130302%_)
                                        (if (gx#identifier? _%id130305%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id130305%_)
                                                        '()))
                                            (_%E130273130285%_))
                                        (_%E130273130285%_)))))
                              (_%E130273130285%_))))
                      (_%E130273130285%_)))))
          (_%E130272130307%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx130216%_)
        (let* ((_%e130217130230%_ _%stx130216%_)
               (_%E130219130234%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130217130230%_)))
               (_%E130218130266%_
                (lambda ()
                  (if (gx#stx-pair? _%e130217130230%_)
                      (let ((_%e130220130238%_
                             (gx#syntax-e _%e130217130230%_)))
                        (let ((_%hd130221130241%_ (##car _%e130220130238%_))
                              (_%tl130222130243%_ (##cdr _%e130220130238%_)))
                          (if (gx#stx-pair? _%tl130222130243%_)
                              (let ((_%e130223130246%_
                                     (gx#syntax-e _%tl130222130243%_)))
                                (let ((_%hd130224130249%_
                                       (##car _%e130223130246%_))
                                      (_%tl130225130251%_
                                       (##cdr _%e130223130246%_)))
                                  (let ((_%id130254%_ _%hd130224130249%_))
                                    (if (gx#stx-pair? _%tl130225130251%_)
                                        (let ((_%e130226130256%_
                                               (gx#syntax-e
                                                _%tl130225130251%_)))
                                          (let ((_%hd130227130259%_
                                                 (##car _%e130226130256%_))
                                                (_%tl130228130261%_
                                                 (##cdr _%e130226130256%_)))
                                            (let ((_%expr130264%_
                                                   _%hd130227130259%_))
                                              (if (gx#stx-null?
                                                   _%tl130228130261%_)
                                                  (if (gx#identifier?
                                                       _%id130254%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id130254%_)
                          (cons (gx#core-compile-top-syntax _%expr130264%_)
                                '())))
              (_%E130219130234%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130219130234%_)))))
                                        (_%E130219130234%_)))))
                              (_%E130219130234%_))))
                      (_%E130219130234%_)))))
          (_%E130218130266%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id130210%_)
        (let ((_%$e130212%_ (gx#resolve-identifier__0 _%id130210%_)))
          (if _%$e130212%_
              (##unchecked-structure-ref _%$e130212%_ '1 '#f '#f)
              _%id130210%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd130208%_)
        (if (gx#identifier? _%hd130208%_)
            (gx#core-compile-top-runtime-ref _%hd130208%_)
            '#f)))))
