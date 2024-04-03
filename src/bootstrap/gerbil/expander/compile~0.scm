(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712121899)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx126520%_)
        (let* ((_%e126521126528%_ _%stx126520%_)
               (_%E126523126532%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126521126528%_)))
               (_%E126522126546%_
                (lambda ()
                  (if (gx#stx-pair? _%e126521126528%_)
                      (let ((_%e126524126536%_
                             (gx#syntax-e _%e126521126528%_)))
                        (let ((_%hd126525126539%_ (##car _%e126524126536%_))
                              (_%tl126526126541%_ (##cdr _%e126524126536%_)))
                          (let ((_%form126544%_ _%hd126525126539%_))
                            (if '#t
                                (let* ((__self126549
                                        (gx#syntax-local-e__0 _%form126544%_))
                                       (__method126550
                                        (__method-ref
                                         __self126549
                                         'compile-top-syntax)))
                                  (if __method126550
                                      (__method126550
                                       __self126549
                                       _%stx126520%_)
                                      (error '"Missing method"
                                             __self126549
                                             'compile-top-syntax)))
                                (_%E126523126532%_)))))
                      (_%E126523126532%_)))))
          (_%E126522126546%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self126468%_ _%stx126469%_)
        (let ()
          (let ((_%self126472%_ _%self126468%_))
            (let ()
              (let* ((_%self126481126489%_ _%self126472%_)
                     (_%E126483126493%_
                      (lambda ()
                        (error '"No clause matching"
                               _%self126481126489%_
                               '((core-expander _ _ K)))
                        '#!void))
                     (_%K126484126506%_
                      (lambda (_%K126496%_)
                        (let ((_%$e126498%_ (gx#stx-source _%stx126469%_)))
                          (if _%$e126498%_
                              ((lambda (_%g126500126502%_)
                                 (gx#stx-wrap-source
                                  (_%K126496%_ _%stx126469%_)
                                  _%g126500126502%_))
                               _%$e126498%_)
                              (let () (_%K126496%_ _%stx126469%_)))))))
                (if '#t
                    (let* ((_%e126485126509%_
                            (##unchecked-structure-ref
                             _%self126481126489%_
                             '1
                             '#f
                             '#f))
                           (_%e126486126512%_
                            (##unchecked-structure-ref
                             _%self126481126489%_
                             '2
                             '#f
                             '#f))
                           (_%e126487126515%_
                            (##unchecked-structure-ref
                             _%self126481126489%_
                             '3
                             '#f
                             '#f))
                           (_%K126518%_ _%e126487126515%_))
                      (_%K126484126506%_ _%K126518%_))
                    (_%E126483126493%_))))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126342%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126342%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126312%_)
        (let* ((_%e126313126320%_ _%stx126312%_)
               (_%E126315126324%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126313126320%_)))
               (_%E126314126338%_
                (lambda ()
                  (if (gx#stx-pair? _%e126313126320%_)
                      (let ((_%e126316126328%_
                             (gx#syntax-e _%e126313126320%_)))
                        (let ((_%hd126317126331%_ (##car _%e126316126328%_))
                              (_%tl126318126333%_ (##cdr _%e126316126328%_)))
                          (let ((_%body126336%_ _%tl126318126333%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126336%_))
                                (_%E126315126324%_)))))
                      (_%E126315126324%_)))))
          (_%E126314126338%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126281%_)
        (let* ((_%e126282126289%_ _%stx126281%_)
               (_%E126284126293%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126282126289%_)))
               (_%E126283126308%_
                (lambda ()
                  (if (gx#stx-pair? _%e126282126289%_)
                      (let ((_%e126285126297%_
                             (gx#syntax-e _%e126282126289%_)))
                        (let ((_%hd126286126300%_ (##car _%e126285126297%_))
                              (_%tl126287126302%_ (##cdr _%e126285126297%_)))
                          (let ((_%body126305%_ _%tl126287126302%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126305%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126284126293%_)))))
                      (_%E126284126293%_)))))
          (_%E126283126308%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126251%_)
        (let* ((_%e126252126259%_ _%stx126251%_)
               (_%E126254126263%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126252126259%_)))
               (_%E126253126277%_
                (lambda ()
                  (if (gx#stx-pair? _%e126252126259%_)
                      (let ((_%e126255126267%_
                             (gx#syntax-e _%e126252126259%_)))
                        (let ((_%hd126256126270%_ (##car _%e126255126267%_))
                              (_%tl126257126272%_ (##cdr _%e126255126267%_)))
                          (let ((_%body126275%_ _%tl126257126272%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126275%_)
                                (_%E126254126263%_)))))
                      (_%E126254126263%_)))))
          (_%E126253126277%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126197%_)
        (let* ((_%e126198126211%_ _%stx126197%_)
               (_%E126200126215%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126198126211%_)))
               (_%E126199126247%_
                (lambda ()
                  (if (gx#stx-pair? _%e126198126211%_)
                      (let ((_%e126201126219%_
                             (gx#syntax-e _%e126198126211%_)))
                        (let ((_%hd126202126222%_ (##car _%e126201126219%_))
                              (_%tl126203126224%_ (##cdr _%e126201126219%_)))
                          (if (gx#stx-pair? _%tl126203126224%_)
                              (let ((_%e126204126227%_
                                     (gx#syntax-e _%tl126203126224%_)))
                                (let ((_%hd126205126230%_
                                       (##car _%e126204126227%_))
                                      (_%tl126206126232%_
                                       (##cdr _%e126204126227%_)))
                                  (let ((_%ann126235%_ _%hd126205126230%_))
                                    (if (gx#stx-pair? _%tl126206126232%_)
                                        (let ((_%e126207126237%_
                                               (gx#syntax-e
                                                _%tl126206126232%_)))
                                          (let ((_%hd126208126240%_
                                                 (##car _%e126207126237%_))
                                                (_%tl126209126242%_
                                                 (##cdr _%e126207126237%_)))
                                            (let ((_%expr126245%_
                                                   _%hd126208126240%_))
                                              (if (gx#stx-null?
                                                   _%tl126209126242%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126245%_)
                                                      (_%E126200126215%_))
                                                  (_%E126200126215%_)))))
                                        (_%E126200126215%_)))))
                              (_%E126200126215%_))))
                      (_%E126200126215%_)))))
          (_%E126199126247%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126167%_)
        (let* ((_%e126168126175%_ _%stx126167%_)
               (_%E126170126179%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126168126175%_)))
               (_%E126169126193%_
                (lambda ()
                  (if (gx#stx-pair? _%e126168126175%_)
                      (let ((_%e126171126183%_
                             (gx#syntax-e _%e126168126175%_)))
                        (let ((_%hd126172126186%_ (##car _%e126171126183%_))
                              (_%tl126173126188%_ (##cdr _%e126171126183%_)))
                          (let ((_%body126191%_ _%tl126173126188%_))
                            (if '#t
                                (cons '%#import _%body126191%_)
                                (_%E126170126179%_)))))
                      (_%E126170126179%_)))))
          (_%E126169126193%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126124%_)
        (let* ((_%e126125126135%_ _%stx126124%_)
               (_%E126127126139%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126125126135%_)))
               (_%E126126126163%_
                (lambda ()
                  (if (gx#stx-pair? _%e126125126135%_)
                      (let ((_%e126128126143%_
                             (gx#syntax-e _%e126125126135%_)))
                        (let ((_%hd126129126146%_ (##car _%e126128126143%_))
                              (_%tl126130126148%_ (##cdr _%e126128126143%_)))
                          (if (gx#stx-pair? _%tl126130126148%_)
                              (let ((_%e126131126151%_
                                     (gx#syntax-e _%tl126130126148%_)))
                                (let ((_%hd126132126154%_
                                       (##car _%e126131126151%_))
                                      (_%tl126133126156%_
                                       (##cdr _%e126131126151%_)))
                                  (let* ((_%hd126159%_ _%hd126132126154%_)
                                         (_%body126161%_ _%tl126133126156%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126159%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126161%_)))
                                        (_%E126127126139%_)))))
                              (_%E126127126139%_))))
                      (_%E126127126139%_)))))
          (_%E126126126163%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126094%_)
        (let* ((_%e126095126102%_ _%stx126094%_)
               (_%E126097126106%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126095126102%_)))
               (_%E126096126120%_
                (lambda ()
                  (if (gx#stx-pair? _%e126095126102%_)
                      (let ((_%e126098126110%_
                             (gx#syntax-e _%e126095126102%_)))
                        (let ((_%hd126099126113%_ (##car _%e126098126110%_))
                              (_%tl126100126115%_ (##cdr _%e126098126110%_)))
                          (let ((_%body126118%_ _%tl126100126115%_))
                            (if '#t
                                (cons '%#export _%body126118%_)
                                (_%E126097126106%_)))))
                      (_%E126097126106%_)))))
          (_%E126096126120%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126064%_)
        (let* ((_%e126065126072%_ _%stx126064%_)
               (_%E126067126076%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126065126072%_)))
               (_%E126066126090%_
                (lambda ()
                  (if (gx#stx-pair? _%e126065126072%_)
                      (let ((_%e126068126080%_
                             (gx#syntax-e _%e126065126072%_)))
                        (let ((_%hd126069126083%_ (##car _%e126068126080%_))
                              (_%tl126070126085%_ (##cdr _%e126068126080%_)))
                          (let ((_%body126088%_ _%tl126070126085%_))
                            (if '#t
                                (cons '%#provide _%body126088%_)
                                (_%E126067126076%_)))))
                      (_%E126067126076%_)))))
          (_%E126066126090%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126034%_)
        (let* ((_%e126035126042%_ _%stx126034%_)
               (_%E126037126046%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126035126042%_)))
               (_%E126036126060%_
                (lambda ()
                  (if (gx#stx-pair? _%e126035126042%_)
                      (let ((_%e126038126050%_
                             (gx#syntax-e _%e126035126042%_)))
                        (let ((_%hd126039126053%_ (##car _%e126038126050%_))
                              (_%tl126040126055%_ (##cdr _%e126038126050%_)))
                          (let ((_%body126058%_ _%tl126040126055%_))
                            (if '#t
                                (cons '%#extern _%body126058%_)
                                (_%E126037126046%_)))))
                      (_%E126037126046%_)))))
          (_%E126036126060%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx125980%_)
        (let* ((_%e125981125994%_ _%stx125980%_)
               (_%E125983125998%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125981125994%_)))
               (_%E125982126030%_
                (lambda ()
                  (if (gx#stx-pair? _%e125981125994%_)
                      (let ((_%e125984126002%_
                             (gx#syntax-e _%e125981125994%_)))
                        (let ((_%hd125985126005%_ (##car _%e125984126002%_))
                              (_%tl125986126007%_ (##cdr _%e125984126002%_)))
                          (if (gx#stx-pair? _%tl125986126007%_)
                              (let ((_%e125987126010%_
                                     (gx#syntax-e _%tl125986126007%_)))
                                (let ((_%hd125988126013%_
                                       (##car _%e125987126010%_))
                                      (_%tl125989126015%_
                                       (##cdr _%e125987126010%_)))
                                  (let ((_%hd126018%_ _%hd125988126013%_))
                                    (if (gx#stx-pair? _%tl125989126015%_)
                                        (let ((_%e125990126020%_
                                               (gx#syntax-e
                                                _%tl125989126015%_)))
                                          (let ((_%hd125991126023%_
                                                 (##car _%e125990126020%_))
                                                (_%tl125992126025%_
                                                 (##cdr _%e125990126020%_)))
                                            (let ((_%expr126028%_
                                                   _%hd125991126023%_))
                                              (if (gx#stx-null?
                                                   _%tl125992126025%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126018%_)
                          (cons (gx#core-compile-top-syntax _%expr126028%_)
                                '())))
              (_%E125983125998%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125983125998%_)))))
                                        (_%E125983125998%_)))))
                              (_%E125983125998%_))))
                      (_%E125983125998%_)))))
          (_%E125982126030%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx125925%_)
        (let* ((_%e125926125939%_ _%stx125925%_)
               (_%E125928125943%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125926125939%_)))
               (_%E125927125976%_
                (lambda ()
                  (if (gx#stx-pair? _%e125926125939%_)
                      (let ((_%e125929125947%_
                             (gx#syntax-e _%e125926125939%_)))
                        (let ((_%hd125930125950%_ (##car _%e125929125947%_))
                              (_%tl125931125952%_ (##cdr _%e125929125947%_)))
                          (if (gx#stx-pair? _%tl125931125952%_)
                              (let ((_%e125932125955%_
                                     (gx#syntax-e _%tl125931125952%_)))
                                (let ((_%hd125933125958%_
                                       (##car _%e125932125955%_))
                                      (_%tl125934125960%_
                                       (##cdr _%e125932125955%_)))
                                  (let ((_%hd125963%_ _%hd125933125958%_))
                                    (if (gx#stx-pair? _%tl125934125960%_)
                                        (let ((_%e125935125965%_
                                               (gx#syntax-e
                                                _%tl125934125960%_)))
                                          (let ((_%hd125936125968%_
                                                 (##car _%e125935125965%_))
                                                (_%tl125937125970%_
                                                 (##cdr _%e125935125965%_)))
                                            (let ((_%expr125973%_
                                                   _%hd125936125968%_))
                                              (if (gx#stx-null?
                                                   _%tl125937125970%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd125963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr125973%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E125928125943%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125928125943%_)))))
                                        (_%E125928125943%_)))))
                              (_%E125928125943%_))))
                      (_%E125928125943%_)))))
          (_%E125927125976%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx125895%_)
        (let* ((_%e125896125903%_ _%stx125895%_)
               (_%E125898125907%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125896125903%_)))
               (_%E125897125921%_
                (lambda ()
                  (if (gx#stx-pair? _%e125896125903%_)
                      (let ((_%e125899125911%_
                             (gx#syntax-e _%e125896125903%_)))
                        (let ((_%hd125900125914%_ (##car _%e125899125911%_))
                              (_%tl125901125916%_ (##cdr _%e125899125911%_)))
                          (let ((_%body125919%_ _%tl125901125916%_))
                            (if '#t
                                (cons '%#define-alias _%body125919%_)
                                (_%E125898125907%_)))))
                      (_%E125898125907%_)))))
          (_%E125897125921%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx125865%_)
        (let* ((_%e125866125873%_ _%stx125865%_)
               (_%E125868125877%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125866125873%_)))
               (_%E125867125891%_
                (lambda ()
                  (if (gx#stx-pair? _%e125866125873%_)
                      (let ((_%e125869125881%_
                             (gx#syntax-e _%e125866125873%_)))
                        (let ((_%hd125870125884%_ (##car _%e125869125881%_))
                              (_%tl125871125886%_ (##cdr _%e125869125881%_)))
                          (let ((_%body125889%_ _%tl125871125886%_))
                            (if '#t
                                (cons '%#define-runtime _%body125889%_)
                                (_%E125868125877%_)))))
                      (_%E125868125877%_)))))
          (_%E125867125891%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx125835%_)
        (let* ((_%e125836125843%_ _%stx125835%_)
               (_%E125838125847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125836125843%_)))
               (_%E125837125861%_
                (lambda ()
                  (if (gx#stx-pair? _%e125836125843%_)
                      (let ((_%e125839125851%_
                             (gx#syntax-e _%e125836125843%_)))
                        (let ((_%hd125840125854%_ (##car _%e125839125851%_))
                              (_%tl125841125856%_ (##cdr _%e125839125851%_)))
                          (let ((_%decls125859%_ _%tl125841125856%_))
                            (if '#t
                                (cons '%#declare _%decls125859%_)
                                (_%E125838125847%_)))))
                      (_%E125838125847%_)))))
          (_%E125837125861%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx125805%_)
        (let* ((_%e125806125813%_ _%stx125805%_)
               (_%E125808125817%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125806125813%_)))
               (_%E125807125831%_
                (lambda ()
                  (if (gx#stx-pair? _%e125806125813%_)
                      (let ((_%e125809125821%_
                             (gx#syntax-e _%e125806125813%_)))
                        (let ((_%hd125810125824%_ (##car _%e125809125821%_))
                              (_%tl125811125826%_ (##cdr _%e125809125821%_)))
                          (let ((_%clause125829%_ _%tl125811125826%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause125829%_))
                                (_%E125808125817%_)))))
                      (_%E125808125817%_)))))
          (_%E125807125831%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx125762%_)
        (let* ((_%e125763125773%_ _%stx125762%_)
               (_%E125765125777%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125763125773%_)))
               (_%E125764125801%_
                (lambda ()
                  (if (gx#stx-pair? _%e125763125773%_)
                      (let ((_%e125766125781%_
                             (gx#syntax-e _%e125763125773%_)))
                        (let ((_%hd125767125784%_ (##car _%e125766125781%_))
                              (_%tl125768125786%_ (##cdr _%e125766125781%_)))
                          (let ((_%hd125789%_ _%hd125767125784%_))
                            (if (gx#stx-pair? _%tl125768125786%_)
                                (let ((_%e125769125791%_
                                       (gx#syntax-e _%tl125768125786%_)))
                                  (let ((_%hd125770125794%_
                                         (##car _%e125769125791%_))
                                        (_%tl125771125796%_
                                         (##cdr _%e125769125791%_)))
                                    (let ((_%body125799%_ _%hd125770125794%_))
                                      (if (gx#stx-null? _%tl125771125796%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd125789%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body125799%_)
                                                          '()))
                                              (_%E125765125777%_))
                                          (_%E125765125777%_)))))
                                (_%E125765125777%_)))))
                      (_%E125765125777%_)))))
          (_%E125764125801%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx125732%_)
        (let* ((_%e125733125740%_ _%stx125732%_)
               (_%E125735125744%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125733125740%_)))
               (_%E125734125758%_
                (lambda ()
                  (if (gx#stx-pair? _%e125733125740%_)
                      (let ((_%e125736125748%_
                             (gx#syntax-e _%e125733125740%_)))
                        (let ((_%hd125737125751%_ (##car _%e125736125748%_))
                              (_%tl125738125753%_ (##cdr _%e125736125748%_)))
                          (let ((_%clauses125756%_ _%tl125738125753%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses125756%_))
                                (_%E125735125744%_)))))
                      (_%E125735125744%_)))))
          (_%E125734125758%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx125667%_ _%form125668%_)
        (let* ((_%e125669125682%_ _%stx125667%_)
               (_%E125671125686%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125669125682%_)))
               (_%E125670125718%_
                (lambda ()
                  (if (gx#stx-pair? _%e125669125682%_)
                      (let ((_%e125672125690%_
                             (gx#syntax-e _%e125669125682%_)))
                        (let ((_%hd125673125693%_ (##car _%e125672125690%_))
                              (_%tl125674125695%_ (##cdr _%e125672125690%_)))
                          (if (gx#stx-pair? _%tl125674125695%_)
                              (let ((_%e125675125698%_
                                     (gx#syntax-e _%tl125674125695%_)))
                                (let ((_%hd125676125701%_
                                       (##car _%e125675125698%_))
                                      (_%tl125677125703%_
                                       (##cdr _%e125675125698%_)))
                                  (let ((_%hd125706%_ _%hd125676125701%_))
                                    (if (gx#stx-pair? _%tl125677125703%_)
                                        (let ((_%e125678125708%_
                                               (gx#syntax-e
                                                _%tl125677125703%_)))
                                          (let ((_%hd125679125711%_
                                                 (##car _%e125678125708%_))
                                                (_%tl125680125713%_
                                                 (##cdr _%e125678125708%_)))
                                            (let ((_%body125716%_
                                                   _%hd125679125711%_))
                                              (if (gx#stx-null?
                                                   _%tl125680125713%_)
                                                  (if '#t
                                                      (cons _%form125668%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd125706%_)
                          (cons (gx#core-compile-top-syntax _%body125716%_)
                                '())))
              (_%E125671125686%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125671125686%_)))))
                                        (_%E125671125686%_)))))
                              (_%E125671125686%_))))
                      (_%E125671125686%_)))))
          (_%E125670125718%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx125725%_)
        (let ((_%form125727%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx125725%_ _%form125727%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g126552_
        (let ((_g126551_ (##length _g126552_)))
          (cond ((##fx= _g126551_ 1)
                 (apply (lambda (_%stx125725%_)
                          (gx#core-compile-top-let-values%__0 _%stx125725%_))
                        _g126552_))
                ((##fx= _g126551_ 2)
                 (apply (lambda (_%stx125729%_ _%form125730%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx125729%_
                           _%form125730%_))
                        _g126552_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g126552_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx125664%_)
        (gx#core-compile-top-let-values%__% _%stx125664%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx125662%_)
        (gx#core-compile-top-let-values%__% _%stx125662%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx125621%_)
        (let* ((_%e125622125632%_ _%stx125621%_)
               (_%E125624125636%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125622125632%_)))
               (_%E125623125658%_
                (lambda ()
                  (if (gx#stx-pair? _%e125622125632%_)
                      (let ((_%e125625125640%_
                             (gx#syntax-e _%e125622125632%_)))
                        (let ((_%hd125626125643%_ (##car _%e125625125640%_))
                              (_%tl125627125645%_ (##cdr _%e125625125640%_)))
                          (if (gx#stx-pair? _%tl125627125645%_)
                              (let ((_%e125628125648%_
                                     (gx#syntax-e _%tl125627125645%_)))
                                (let ((_%hd125629125651%_
                                       (##car _%e125628125648%_))
                                      (_%tl125630125653%_
                                       (##cdr _%e125628125648%_)))
                                  (let ((_%e125656%_ _%hd125629125651%_))
                                    (if (gx#stx-null? _%tl125630125653%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e125656%_)
                                                        '()))
                                            (_%E125624125636%_))
                                        (_%E125624125636%_)))))
                              (_%E125624125636%_))))
                      (_%E125624125636%_)))))
          (_%E125623125658%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx125580%_)
        (let* ((_%e125581125591%_ _%stx125580%_)
               (_%E125583125595%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125581125591%_)))
               (_%E125582125617%_
                (lambda ()
                  (if (gx#stx-pair? _%e125581125591%_)
                      (let ((_%e125584125599%_
                             (gx#syntax-e _%e125581125591%_)))
                        (let ((_%hd125585125602%_ (##car _%e125584125599%_))
                              (_%tl125586125604%_ (##cdr _%e125584125599%_)))
                          (if (gx#stx-pair? _%tl125586125604%_)
                              (let ((_%e125587125607%_
                                     (gx#syntax-e _%tl125586125604%_)))
                                (let ((_%hd125588125610%_
                                       (##car _%e125587125607%_))
                                      (_%tl125589125612%_
                                       (##cdr _%e125587125607%_)))
                                  (let ((_%e125615%_ _%hd125588125610%_))
                                    (if (gx#stx-null? _%tl125589125612%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e125615%_)
                                                        '()))
                                            (_%E125583125595%_))
                                        (_%E125583125595%_)))))
                              (_%E125583125595%_))))
                      (_%E125583125595%_)))))
          (_%E125582125617%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx125537%_)
        (let* ((_%e125538125548%_ _%stx125537%_)
               (_%E125540125552%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125538125548%_)))
               (_%E125539125576%_
                (lambda ()
                  (if (gx#stx-pair? _%e125538125548%_)
                      (let ((_%e125541125556%_
                             (gx#syntax-e _%e125538125548%_)))
                        (let ((_%hd125542125559%_ (##car _%e125541125556%_))
                              (_%tl125543125561%_ (##cdr _%e125541125556%_)))
                          (if (gx#stx-pair? _%tl125543125561%_)
                              (let ((_%e125544125564%_
                                     (gx#syntax-e _%tl125543125561%_)))
                                (let ((_%hd125545125567%_
                                       (##car _%e125544125564%_))
                                      (_%tl125546125569%_
                                       (##cdr _%e125544125564%_)))
                                  (let* ((_%rator125572%_ _%hd125545125567%_)
                                         (_%args125574%_ _%tl125546125569%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator125572%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args125574%_)))
                                        (_%E125540125552%_)))))
                              (_%E125540125552%_))))
                      (_%E125540125552%_)))))
          (_%E125539125576%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx125470%_)
        (let* ((_%e125471125487%_ _%stx125470%_)
               (_%E125473125491%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125471125487%_)))
               (_%E125472125533%_
                (lambda ()
                  (if (gx#stx-pair? _%e125471125487%_)
                      (let ((_%e125474125495%_
                             (gx#syntax-e _%e125471125487%_)))
                        (let ((_%hd125475125498%_ (##car _%e125474125495%_))
                              (_%tl125476125500%_ (##cdr _%e125474125495%_)))
                          (if (gx#stx-pair? _%tl125476125500%_)
                              (let ((_%e125477125503%_
                                     (gx#syntax-e _%tl125476125500%_)))
                                (let ((_%hd125478125506%_
                                       (##car _%e125477125503%_))
                                      (_%tl125479125508%_
                                       (##cdr _%e125477125503%_)))
                                  (let ((_%test125511%_ _%hd125478125506%_))
                                    (if (gx#stx-pair? _%tl125479125508%_)
                                        (let ((_%e125480125513%_
                                               (gx#syntax-e
                                                _%tl125479125508%_)))
                                          (let ((_%hd125481125516%_
                                                 (##car _%e125480125513%_))
                                                (_%tl125482125518%_
                                                 (##cdr _%e125480125513%_)))
                                            (let ((_%K125521%_
                                                   _%hd125481125516%_))
                                              (if (gx#stx-pair?
                                                   _%tl125482125518%_)
                                                  (let ((_%e125483125523%_
                                                         (gx#syntax-e
                                                          _%tl125482125518%_)))
                                                    (let ((_%hd125484125526%_
                                                           (##car _%e125483125523%_))
                                                          (_%tl125485125528%_
                                                           (##cdr _%e125483125523%_)))
                                                      (let ((_%E125531%_
                                                             _%hd125484125526%_))
                                                        (if (gx#stx-null?
                                                             _%tl125485125528%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test125511%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K125521%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E125531%_)
                                                '()))))
                        (_%E125473125491%_))
                    (_%E125473125491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125473125491%_)))))
                                        (_%E125473125491%_)))))
                              (_%E125473125491%_))))
                      (_%E125473125491%_)))))
          (_%E125472125533%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125429%_)
        (let* ((_%e125430125440%_ _%stx125429%_)
               (_%E125432125444%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125430125440%_)))
               (_%E125431125466%_
                (lambda ()
                  (if (gx#stx-pair? _%e125430125440%_)
                      (let ((_%e125433125448%_
                             (gx#syntax-e _%e125430125440%_)))
                        (let ((_%hd125434125451%_ (##car _%e125433125448%_))
                              (_%tl125435125453%_ (##cdr _%e125433125448%_)))
                          (if (gx#stx-pair? _%tl125435125453%_)
                              (let ((_%e125436125456%_
                                     (gx#syntax-e _%tl125435125453%_)))
                                (let ((_%hd125437125459%_
                                       (##car _%e125436125456%_))
                                      (_%tl125438125461%_
                                       (##cdr _%e125436125456%_)))
                                  (let ((_%id125464%_ _%hd125437125459%_))
                                    (if (gx#stx-null? _%tl125438125461%_)
                                        (if (gx#identifier? _%id125464%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id125464%_)
                                                        '()))
                                            (_%E125432125444%_))
                                        (_%E125432125444%_)))))
                              (_%E125432125444%_))))
                      (_%E125432125444%_)))))
          (_%E125431125466%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125375%_)
        (let* ((_%e125376125389%_ _%stx125375%_)
               (_%E125378125393%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125376125389%_)))
               (_%E125377125425%_
                (lambda ()
                  (if (gx#stx-pair? _%e125376125389%_)
                      (let ((_%e125379125397%_
                             (gx#syntax-e _%e125376125389%_)))
                        (let ((_%hd125380125400%_ (##car _%e125379125397%_))
                              (_%tl125381125402%_ (##cdr _%e125379125397%_)))
                          (if (gx#stx-pair? _%tl125381125402%_)
                              (let ((_%e125382125405%_
                                     (gx#syntax-e _%tl125381125402%_)))
                                (let ((_%hd125383125408%_
                                       (##car _%e125382125405%_))
                                      (_%tl125384125410%_
                                       (##cdr _%e125382125405%_)))
                                  (let ((_%id125413%_ _%hd125383125408%_))
                                    (if (gx#stx-pair? _%tl125384125410%_)
                                        (let ((_%e125385125415%_
                                               (gx#syntax-e
                                                _%tl125384125410%_)))
                                          (let ((_%hd125386125418%_
                                                 (##car _%e125385125415%_))
                                                (_%tl125387125420%_
                                                 (##cdr _%e125385125415%_)))
                                            (let ((_%expr125423%_
                                                   _%hd125386125418%_))
                                              (if (gx#stx-null?
                                                   _%tl125387125420%_)
                                                  (if (gx#identifier?
                                                       _%id125413%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125413%_)
                          (cons (gx#core-compile-top-syntax _%expr125423%_)
                                '())))
              (_%E125378125393%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125378125393%_)))))
                                        (_%E125378125393%_)))))
                              (_%E125378125393%_))))
                      (_%E125378125393%_)))))
          (_%E125377125425%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125369%_)
        (let ((_%$e125371%_ (gx#resolve-identifier__0 _%id125369%_)))
          (if _%$e125371%_
              (##unchecked-structure-ref _%$e125371%_ '1 '#f '#f)
              (let () _%id125369%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125367%_)
        (if (gx#identifier? _%hd125367%_)
            (gx#core-compile-top-runtime-ref _%hd125367%_)
            '#f)))))
