(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22029%_)
      (let ((_%$e22032%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22032%_
            ((lambda (_%ns22036%_)
               (gx#stx-identifier
                _%type-t22029%_
                _%ns22036%_
                '"#"
                _%type-t22029%_
                '"::t"))
             _%$e22032%_)
            (let ((_%mid22041%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22029%_
               _%mid22041%_
               '"#"
               _%type-t22029%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22026%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22026%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22026%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx20604%_ _%struct?20606%_)
      (letrec ((_%wrap20608%_
                (lambda (_%e-stx22023%_)
                  (gx#stx-wrap-source
                   _%e-stx22023%_
                   (gx#stx-source _%stx20604%_))))
               (_%slot-name20610%_
                (lambda (_%slot-spec21940%_)
                  (let* ((_%g2194321962%_
                          (lambda (_%g2194421958%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2194421958%_)))
                         (_%g2194222019%_
                          (lambda (_%g2194421966%_)
                            (if (gx#stx-pair? _%g2194421966%_)
                                (let ((_%e2194821969%_
                                       (gx#syntax-e _%g2194421966%_)))
                                  (let ((_%hd2194921973%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2194821969%_)))
                                        (_%tl2195021976%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2194821969%_))))
                                    (if (gx#stx-pair? _%tl2195021976%_)
                                        (let ((_%e2195121979%_
                                               (gx#syntax-e _%tl2195021976%_)))
                                          (let ((_%hd2195221983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2195121979%_)))
                                                (_%tl2195321986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2195121979%_))))
                                            (if (gx#stx-pair? _%tl2195321986%_)
                                                (let ((_%e2195421989%_
                                                       (gx#syntax-e
                                                        _%tl2195321986%_)))
                                                  (let ((_%hd2195521993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2195421989%_)))
                                                        (_%tl2195621996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2195421989%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2195621996%_)
                                                        ((lambda (_%L21999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L22001%_
                          _%L22002%_)
                   _%L22002%_)
                 _%hd2195521993%_
                 _%hd2195221983%_
                 _%hd2194921973%_)
                (_%g2194321962%_ _%g2194421966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2194321962%_
                                                 _%g2194421966%_))))
                                        (_%g2194321962%_ _%g2194421966%_))))
                                (_%g2194321962%_ _%g2194421966%_)))))
                    (_%g2194222019%_ _%slot-spec21940%_))))
               (_%class-opt?20611%_
                (lambda (_%key21937%_)
                  (let ((__tmp26724 (gx#stx-e _%key21937%_)))
                    (declare (not safe))
                    (##memq __tmp26724
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2061320640%_
                (lambda (_%g2061420636%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2061420636%_)))
               (_%g2061221933%_
                (lambda (_%g2061420644%_)
                  (if (gx#stx-pair? _%g2061420644%_)
                      (let ((_%e2062020647%_ (gx#syntax-e _%g2061420644%_)))
                        (let ((_%hd2062120651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2062020647%_)))
                              (_%tl2062220654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2062020647%_))))
                          (if (gx#stx-pair? _%tl2062220654%_)
                              (let ((_%e2062320657%_
                                     (gx#syntax-e _%tl2062220654%_)))
                                (let ((_%hd2062420661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2062320657%_)))
                                      (_%tl2062520664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2062320657%_))))
                                  (if (gx#stx-pair? _%tl2062520664%_)
                                      (let ((_%e2062620667%_
                                             (gx#syntax-e _%tl2062520664%_)))
                                        (let ((_%hd2062720671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2062620667%_)))
                                              (_%tl2062820674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2062620667%_))))
                                          (if (gx#stx-pair? _%tl2062820674%_)
                                              (let ((_%e2062920677%_
                                                     (gx#syntax-e
                                                      _%tl2062820674%_)))
                                                (let ((_%hd2063020681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2062920677%_)))
                                                      (_%tl2063120684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2062920677%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2063120684%_)
                                                      (let ((_%e2063220687%_
                                                             (gx#syntax-e
                                                              _%tl2063120684%_)))
                                                        (let ((_%hd2063320691%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2063220687%_)))
                      (_%tl2063420694%_
                       (let () (declare (not safe)) (##cdr _%e2063220687%_))))
                  ((lambda (_%L20697%_
                            _%L20699%_
                            _%L20700%_
                            _%L20701%_
                            _%L20702%_)
                     (if (and (gx#identifier? _%L20702%_)
                              (gx#identifier-list? _%L20701%_)
                              (or (gx#identifier? _%L20700%_)
                                  (gx#stx-false? _%L20700%_))
                              (gx#identifier? _%L20699%_)
                              (gx#stx-plist? _%L20697%_ _%class-opt?20611%_))
                         (let* ((_%struct?20742%_
                                 (let ((_%$e20732%_ _%struct?20606%_))
                                   (if _%$e20732%_
                                       _%$e20732%_
                                       (let ((_%$e20736%_
                                              (gx#stx-getq
                                               'struct:
                                               _%L20697%_)))
                                         (if _%$e20736%_
                                             (gx#stx-e _%$e20736%_)
                                             '#f)))))
                                (_%slots20749%_
                                 (let ((_%$e20745%_
                                        (gx#stx-getq 'slots: _%L20697%_)))
                                   (if _%$e20745%_ _%$e20745%_ '())))
                                (_%mixin-slots20756%_
                                 (let ((_%$e20752%_
                                        (gx#stx-getq 'mixin: _%L20697%_)))
                                   (if _%$e20752%_ _%$e20752%_ '())))
                                (_%accessible-slots20759%_
                                 (append (gx#syntax->list _%slots20749%_)
                                         (gx#syntax->list
                                          _%mixin-slots20756%_)))
                                (_%metaclass20762%_
                                 (gx#stx-getq 'metaclass: _%L20697%_))
                                (_%g2076520782%_
                                 (lambda (_%g2076620778%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2076620778%_)))
                                (_%g2076421929%_
                                 (lambda (_%g2076620786%_)
                                   (if (gx#stx-pair/null? _%g2076620786%_)
                                       (let ((_g26725_
                                              (gx#syntax-split-splice
                                               _%g2076620786%_
                                               '0)))
                                         (begin
                                           (let ((_g26726_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g26725_)
                                                        (##values-length
                                                         _g26725_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g26726_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g26726_)))
                                           (let ((_%target2076820789%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g26725_ 0)))
                                                 (_%tl2077020792%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g26725_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2077020792%_)
                                                 (letrec ((_%loop2077120795%_
                                                           (lambda (_%hd2076920799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2077520802%_)
                     (if (gx#stx-pair? _%hd2076920799%_)
                         (let ((_%e2077220805%_
                                (gx#syntax-e _%hd2076920799%_)))
                           (let ((_%lp-hd2077320809%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2077220805%_)))
                                 (_%lp-tl2077420812%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2077220805%_))))
                             (_%loop2077120795%_
                              _%lp-tl2077420812%_
                              (cons _%lp-hd2077320809%_ _%slot2077520802%_))))
                         (let ((_%slot2077620815%_
                                (reverse _%slot2077520802%_)))
                           ((lambda (_%L20819%_)
                              (let* ((_%g2084020848%_
                                      (lambda (_%g2084120844%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2084120844%_)))
                                     (_%g2083921921%_
                                      (lambda (_%g2084120852%_)
                                        ((lambda (_%L20855%_)
                                           (let* ((_%g2086820876%_
                                                   (lambda (_%g2086920872%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2086920872%_)))
                                                  (_%g2086721913%_
                                                   (lambda (_%g2086920880%_)
                                                     ((lambda (_%L20883%_)
                                                        (let* ((_%g2089620904%_
                                                                (lambda (_%g2089720900%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2089720900%_)))
                       (_%g2089521909%_
                        (lambda (_%g2089720908%_)
                          ((lambda (_%L20911%_)
                             (let* ((_%g2092420932%_
                                     (lambda (_%g2092520928%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2092520928%_)))
                                    (_%g2092321905%_
                                     (lambda (_%g2092520936%_)
                                       ((lambda (_%L20939%_)
                                          (let* ((_%g2095220960%_
                                                  (lambda (_%g2095320956%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2095320956%_)))
                                                 (_%g2095121901%_
                                                  (lambda (_%g2095320964%_)
                                                    ((lambda (_%L20967%_)
                                                       (let* ((_%g2098020988%_
                                                               (lambda (_%g2098120984%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2098120984%_)))
                      (_%g2097921897%_
                       (lambda (_%g2098120992%_)
                         ((lambda (_%L20995%_)
                            (let* ((_%g2100821016%_
                                    (lambda (_%g2100921012%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2100921012%_)))
                                   (_%g2100721893%_
                                    (lambda (_%g2100921020%_)
                                      ((lambda (_%L21023%_)
                                         (let* ((_%g2103621044%_
                                                 (lambda (_%g2103721040%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2103721040%_)))
                                                (_%g2103521889%_
                                                 (lambda (_%g2103721048%_)
                                                   ((lambda (_%L21051%_)
                                                      (let* ((_%g2106421072%_
                                                              (lambda (_%g2106521068%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2106521068%_)))
                     (_%g2106321881%_
                      (lambda (_%g2106521076%_)
                        ((lambda (_%L21079%_)
                           (let* ((_%g2109221100%_
                                   (lambda (_%g2109321096%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2109321096%_)))
                                  (_%g2109121877%_
                                   (lambda (_%g2109321104%_)
                                     ((lambda (_%L21107%_)
                                        (let* ((_%g2112021128%_
                                                (lambda (_%g2112121124%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2112121124%_)))
                                               (_%g2111921873%_
                                                (lambda (_%g2112121132%_)
                                                  ((lambda (_%L21135%_)
                                                     (let* ((_%g2114821156%_
                                                             (lambda (_%g2114921152%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2114921152%_)))
                                                            (_%g2114721838%_
                                                             (lambda (_%g2114921160%_)
                                                               ((lambda (_%L21163%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2117621184%_
                                  (lambda (_%g2117721180%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2117721180%_)))
                                 (_%g2117521834%_
                                  (lambda (_%g2117721188%_)
                                    ((lambda (_%L21191%_)
                                       (let* ((_%g2120421212%_
                                               (lambda (_%g2120521208%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2120521208%_)))
                                              (_%g2120321822%_
                                               (lambda (_%g2120521216%_)
                                                 ((lambda (_%L21219%_)
                                                    (let* ((_%g2123221240%_
                                                            (lambda (_%g2123321236%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2123321236%_)))
                                                           (_%g2123121810%_
                                                            (lambda (_%g2123321244%_)
                                                              ((lambda (_%L21247%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2126021268%_
                                 (lambda (_%g2126121264%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2126121264%_)))
                                (_%g2125921806%_
                                 (lambda (_%g2126121272%_)
                                   ((lambda (_%L21275%_)
                                      (let* ((_%g2128821296%_
                                              (lambda (_%g2128921292%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2128921292%_)))
                                             (_%g2128721802%_
                                              (lambda (_%g2128921300%_)
                                                ((lambda (_%L21303%_)
                                                   (let* ((_%g2131621342%_
                                                           (lambda (_%g2131721338%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2131721338%_)))
                                                          (_%g2131521714%_
                                                           (lambda (_%g2131721346%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2131721346%_)
                         (let ((_g26727_
                                (gx#syntax-split-splice _%g2131721346%_ '0)))
                           (begin
                             (let ((_g26728_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g26727_)
                                          (##values-length _g26727_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g26728_ 2)))
                                   (error "Context expects 2 values"
                                          _g26728_)))
                             (let ((_%target2132021349%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g26727_ 0)))
                                   (_%tl2132221352%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g26727_ 1))))
                               (if (gx#stx-null? _%tl2132221352%_)
                                   (letrec ((_%loop2132321355%_
                                             (lambda (_%hd2132121359%_
                                                      _%def-setf2132721362%_
                                                      _%def-getf2132821364%_)
                                               (if (gx#stx-pair?
                                                    _%hd2132121359%_)
                                                   (let ((_%e2132421367%_
                                                          (gx#syntax-e
                                                           _%hd2132121359%_)))
                                                     (let ((_%lp-hd2132521371%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2132421367%_)))
                                                           (_%lp-tl2132621374%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2132421367%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2132521371%_)
                                                           (let ((_%e2133121377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2132521371%_)))
                     (let ((_%hd2133221381%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2133121377%_)))
                           (_%tl2133321384%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2133121377%_))))
                       (if (gx#stx-pair? _%tl2133321384%_)
                           (let ((_%e2133421387%_
                                  (gx#syntax-e _%tl2133321384%_)))
                             (let ((_%hd2133521391%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2133421387%_)))
                                   (_%tl2133621394%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2133421387%_))))
                               (if (gx#stx-null? _%tl2133621394%_)
                                   (_%loop2132321355%_
                                    _%lp-tl2132621374%_
                                    (cons _%hd2133521391%_
                                          _%def-setf2132721362%_)
                                    (cons _%hd2133221381%_
                                          _%def-getf2132821364%_))
                                   (_%g2131621342%_ _%g2131721346%_))))
                           (_%g2131621342%_ _%g2131721346%_))))
                   (_%g2131621342%_ _%g2131721346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2132921397%_
                                                          (reverse _%def-setf2132721362%_))
                                                         (_%def-getf2133021400%_
                                                          (reverse _%def-getf2132821364%_)))
                                                     ((lambda (_%L21403%_
                                                               _%L21405%_)
                                                        (let* ((_%g2142221448%_
                                                                (lambda (_%g2142321444%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2142321444%_)))
                       (_%g2142121562%_
                        (lambda (_%g2142321452%_)
                          (if (gx#stx-pair/null? _%g2142321452%_)
                              (let ((_g26729_
                                     (gx#syntax-split-splice
                                      _%g2142321452%_
                                      '0)))
                                (begin
                                  (let ((_g26730_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g26729_)
                                               (##values-length _g26729_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g26730_ 2)))
                                        (error "Context expects 2 values"
                                               _g26730_)))
                                  (let ((_%target2142621455%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g26729_ 0)))
                                        (_%tl2142821458%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g26729_ 1))))
                                    (if (gx#stx-null? _%tl2142821458%_)
                                        (letrec ((_%loop2142921461%_
                                                  (lambda (_%hd2142721465%_
                                                           _%def-usetf2143321468%_
                                                           _%def-ugetf2143421470%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2142721465%_)
                                                        (let ((_%e2143021473%_
                                                               (gx#syntax-e
                                                                _%hd2142721465%_)))
                                                          (let ((_%lp-hd2143121477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2143021473%_)))
                        (_%lp-tl2143221480%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2143021473%_))))
                    (if (gx#stx-pair? _%lp-hd2143121477%_)
                        (let ((_%e2143721483%_
                               (gx#syntax-e _%lp-hd2143121477%_)))
                          (let ((_%hd2143821487%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2143721483%_)))
                                (_%tl2143921490%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2143721483%_))))
                            (if (gx#stx-pair? _%tl2143921490%_)
                                (let ((_%e2144021493%_
                                       (gx#syntax-e _%tl2143921490%_)))
                                  (let ((_%hd2144121497%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2144021493%_)))
                                        (_%tl2144221500%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2144021493%_))))
                                    (if (gx#stx-null? _%tl2144221500%_)
                                        (_%loop2142921461%_
                                         _%lp-tl2143221480%_
                                         (cons _%hd2144121497%_
                                               _%def-usetf2143321468%_)
                                         (cons _%hd2143821487%_
                                               _%def-ugetf2143421470%_))
                                        (_%g2142221448%_ _%g2142321452%_))))
                                (_%g2142221448%_ _%g2142321452%_))))
                        (_%g2142221448%_ _%g2142321452%_))))
                (let ((_%def-usetf2143521503%_
                       (reverse _%def-usetf2143321468%_))
                      (_%def-ugetf2143621506%_
                       (reverse _%def-ugetf2143421470%_)))
                  ((lambda (_%L21509%_ _%L21511%_)
                     (_%wrap20608%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%L21247%_
                                  (cons _%L21303%_
                                        (cons _%L21275%_
                                              (foldr (lambda (_%g2152921538%_
                                                              _%g2153021541%_)
                                                       (cons _%g2152921538%_
                                                             _%g2153021541%_))
                                                     (foldr (lambda (_%g2153121544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2153221547%_)
                      (cons _%g2153121544%_ _%g2153221547%_))
                    (foldr (lambda (_%g2153321550%_ _%g2153421553%_)
                             (cons _%g2153321550%_ _%g2153421553%_))
                           (foldr (lambda (_%g2153521556%_ _%g2153621559%_)
                                    (cons _%g2153521556%_ _%g2153621559%_))
                                  '()
                                  _%L21509%_)
                           _%L21511%_)
                    _%L21403%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%L21405%_)))))))
                   _%def-usetf2143521503%_
                   _%def-ugetf2143621506%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2142921461%_
                                           _%target2142621455%_
                                           '()
                                           '()))
                                        (_%g2142221448%_ _%g2142321452%_)))))
                              (_%g2142221448%_ _%g2142321452%_)))))
                  (_%g2142121562%_
                   (gx#stx-map
                    (lambda (_%ref21566%_)
                      (let* ((_%g2156921588%_
                              (lambda (_%g2157021584%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2157021584%_)))
                             (_%g2156821710%_
                              (lambda (_%g2157021592%_)
                                (if (gx#stx-pair? _%g2157021592%_)
                                    (let ((_%e2157421595%_
                                           (gx#syntax-e _%g2157021592%_)))
                                      (let ((_%hd2157521599%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2157421595%_)))
                                            (_%tl2157621602%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2157421595%_))))
                                        (if (gx#stx-pair? _%tl2157621602%_)
                                            (let ((_%e2157721605%_
                                                   (gx#syntax-e
                                                    _%tl2157621602%_)))
                                              (let ((_%hd2157821609%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2157721605%_)))
                                                    (_%tl2157921612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2157721605%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2157921612%_)
                                                    (let ((_%e2158021615%_
                                                           (gx#syntax-e
                                                            _%tl2157921612%_)))
                                                      (let ((_%hd2158121619%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2158021615%_)))
                    (_%tl2158221622%_
                     (let () (declare (not safe)) (##cdr _%e2158021615%_))))
                (if (gx#stx-null? _%tl2158221622%_)
                    ((lambda (_%L21625%_ _%L21627%_ _%L21628%_)
                       (let* ((_%g2164621661%_
                               (lambda (_%g2164721657%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2164721657%_)))
                              (_%g2164521706%_
                               (lambda (_%g2164721665%_)
                                 (if (gx#stx-pair? _%g2164721665%_)
                                     (let ((_%e2165021668%_
                                            (gx#syntax-e _%g2164721665%_)))
                                       (let ((_%hd2165121672%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2165021668%_)))
                                             (_%tl2165221675%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2165021668%_))))
                                         (if (gx#stx-pair? _%tl2165221675%_)
                                             (let ((_%e2165321678%_
                                                    (gx#syntax-e
                                                     _%tl2165221675%_)))
                                               (let ((_%hd2165421682%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2165321678%_)))
                                                     (_%tl2165521685%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2165321678%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2165521685%_)
                                                     ((lambda (_%L21688%_
                                                               _%L21690%_)
                                                        (cons (_%wrap20608%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%L21690%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%L20939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L21628%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%L20702%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L21628%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap20608%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L21688%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%L20939%_ (cons _%L21628%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%L20702%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L21628%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2165421682%_
              _%hd2165121672%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2164621661%_
                                                      _%g2164721665%_))))
                                             (_%g2164621661%_
                                              _%g2164721665%_))))
                                     (_%g2164621661%_ _%g2164721665%_)))))
                         (_%g2164521706%_
                          (list (gx#stx-identifier _%L21627%_ '"&" _%L21627%_)
                                (gx#stx-identifier
                                 _%L21625%_
                                 '"&"
                                 _%L21625%_)))))
                     _%hd2158121619%_
                     _%hd2157821609%_
                     _%hd2157521599%_)
                    (_%g2156921588%_ _%g2157021592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2156921588%_
                                                     _%g2157021592%_))))
                                            (_%g2156921588%_
                                             _%g2157021592%_))))
                                    (_%g2156921588%_ _%g2157021592%_)))))
                        (_%g2156821710%_ _%ref21566%_)))
                    _%accessible-slots20759%_))))
              _%def-setf2132921397%_
              _%def-getf2133021400%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2132321355%_
                                      _%target2132021349%_
                                      '()
                                      '()))
                                   (_%g2131621342%_ _%g2131721346%_)))))
                         (_%g2131621342%_ _%g2131721346%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2131521714%_
                                                      (gx#stx-map
                                                       (lambda (_%ref21718%_)
                                                         (let* ((_%g2172121740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2172221736%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2172221736%_)))
                        (_%g2172021798%_
                         (lambda (_%g2172221744%_)
                           (if (gx#stx-pair? _%g2172221744%_)
                               (let ((_%e2172621747%_
                                      (gx#syntax-e _%g2172221744%_)))
                                 (let ((_%hd2172721751%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2172621747%_)))
                                       (_%tl2172821754%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2172621747%_))))
                                   (if (gx#stx-pair? _%tl2172821754%_)
                                       (let ((_%e2172921757%_
                                              (gx#syntax-e _%tl2172821754%_)))
                                         (let ((_%hd2173021761%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2172921757%_)))
                                               (_%tl2173121764%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2172921757%_))))
                                           (if (gx#stx-pair? _%tl2173121764%_)
                                               (let ((_%e2173221767%_
                                                      (gx#syntax-e
                                                       _%tl2173121764%_)))
                                                 (let ((_%hd2173321771%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2173221767%_)))
                                                       (_%tl2173421774%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2173221767%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2173421774%_)
                                                       ((lambda (_%L21777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L21779%_
                         _%L21780%_)
                  (cons (_%wrap20608%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%L21779%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%L20939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L21780%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%L20702%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L21780%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap20608%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%L21777%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%L20939%_ (cons _%L21780%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%L20702%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L21780%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2173321771%_
                _%hd2173021761%_
                _%hd2172721751%_)
               (_%g2172121740%_ _%g2172221744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2172121740%_
                                                _%g2172221744%_))))
                                       (_%g2172121740%_ _%g2172221744%_))))
                               (_%g2172121740%_ _%g2172221744%_)))))
                   (_%g2172021798%_ _%ref21718%_)))
               _%accessible-slots20759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2128921300%_))))
                                        (_%g2128721802%_
                                         (_%wrap20608%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%L20699%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%L20939%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%L20702%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2126121272%_))))
                           (_%g2125921806%_
                            (if (gx#stx-false? _%L20700%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap20608%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%L20700%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%L20939%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%L20702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2123321244%_))))
              (_%g2123121810%_
               (_%wrap20608%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%L20702%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%L20855%_
                                                          (cons _%L20967%_
                                                                (cons (foldr (lambda (_%g2181321816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2181421819%_)
                                       (cons _%g2181321816%_ _%g2181421819%_))
                                     '()
                                     _%L20819%_)
                              (cons _%L20911%_
                                    (cons _%L20995%_
                                          (cons _%L21023%_
                                                (cons _%L21051%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L21219%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2120521216%_))))
                                         (_%g2120321822%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L20855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _%L20883%_ '()))
                    (cons _%L21191%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2182521828%_
                                                            _%g2182621831%_)
                                                     (cons _%g2182521828%_
                                                           _%g2182621831%_))
                                                   '()
                                                   _%L20819%_)
                                            '()))
                                (cons _%L21163%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L20911%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2117721188%_))))
                            (_%g2117521834%_
                             (cons (gx#datum->syntax '#f 'list) _%L20701%_))))
                        _%g2114921160%_))))
               (_%g2114721838%_
                (if (gx#stx-e _%metaclass20762%_)
                    (let* ((_%g2184221850%_
                            (lambda (_%g2184321846%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2184321846%_)))
                           (_%g2184121869%_
                            (lambda (_%g2184321854%_)
                              ((lambda (_%L21857%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%L21857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%L21135%_ '())))))
                               _%g2184321854%_))))
                      (_%g2184121869%_ _%metaclass20762%_))
                    _%L21135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2112121132%_))))
                                          (_%g2111921873%_
                                           (if _%struct?20742%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%L21107%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%L21107%_))))
                                      _%g2109321104%_))))
                             (_%g2109121877%_
                              (if (gx#stx-e _%L21023%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%L21079%_ '()))))
                                  _%L21079%_))))
                         _%g2106521076%_))))
                (_%g2106321881%_
                 (let ((_%$e21885%_ (gx#stx-getq 'properties: _%L20697%_)))
                   (if _%$e21885%_
                       _%$e21885%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2103721048%_))))
                                           (_%g2103521889%_
                                            (if (gx#stx-e _%metaclass20762%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass20762%_)
                                                '#f))))
                                       _%g2100921020%_))))
                              (_%g2100721893%_
                               (gx#stx-getq 'final: _%L20697%_))))
                          _%g2098120992%_))))
                 (_%g2097921897%_ _%struct?20742%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2095320964%_))))
                                            (_%g2095121901%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%L20701%_))))
                                        _%g2092520936%_))))
                               (_%g2092321905%_
                                (gx#core-quote-syntax _%L20702%_))))
                           _%g2089720908%_))))
                  (_%g2089521909%_ (gx#stx-getq 'constructor: _%L20697%_))))
              _%g2086920880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2086721913%_
                                              (let ((_%$e21917%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%L20697%_)))
                                                (if _%$e21917%_
                                                    _%$e21917%_
                                                    _%L20702%_)))))
                                         _%g2084120852%_))))
                                (_%g2083921921%_
                                 (let ((_%$e21925%_
                                        (gx#stx-getq 'id: _%L20697%_)))
                                   (if _%$e21925%_
                                       _%$e21925%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%L20702%_))))))
                            _%slot2077620815%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2077120795%_
                                                    _%target2076820789%_
                                                    '()))
                                                 (_%g2076520782%_
                                                  _%g2076620786%_)))))
                                       (_%g2076520782%_ _%g2076620786%_)))))
                           (_%g2076421929%_
                            (gx#stx-map _%slot-name20610%_ _%slots20749%_)))
                         (_%g2061320640%_ _%g2061420644%_)))
                   _%tl2063420694%_
                   _%hd2063320691%_
                   _%hd2063020681%_
                   _%hd2062720671%_
                   _%hd2062420661%_)))
              (_%g2061320640%_ _%g2061420644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2061320640%_
                                               _%g2061420644%_))))
                                      (_%g2061320640%_ _%g2061420644%_))))
                              (_%g2061320640%_ _%g2061420644%_))))
                      (_%g2061320640%_ _%g2061420644%_)))))
          (_%g2061221933%_ _%stx20604%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22047%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22047%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22050%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22050%_ '#f))))
