(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t22231%_)
      (let ((_%$e22234%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e22234%_
            ((lambda (_%ns22238%_)
               (gx#stx-identifier
                _%type-t22231%_
                _%ns22238%_
                '"#"
                _%type-t22231%_
                '"::t"))
             _%$e22234%_)
            (let ((_%mid22243%_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _%type-t22231%_
               _%mid22243%_
               '"#"
               _%type-t22231%_
               '"::t"))))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t22228%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t22228%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t22228%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx20816%_ _%struct?20818%_)
      (letrec ((_%wrap20820%_
                (lambda (_%e-stx22225%_)
                  (gx#stx-wrap-source
                   _%e-stx22225%_
                   (gx#stx-source _%stx20816%_))))
               (_%slot-name20822%_
                (lambda (_%slot-spec22142%_)
                  (let* ((_%g2214522164%_
                          (lambda (_%g2214622160%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2214622160%_)))
                         (_%g2214422221%_
                          (lambda (_%g2214622168%_)
                            (if (gx#stx-pair? _%g2214622168%_)
                                (let ((_%e2215022171%_
                                       (gx#syntax-e _%g2214622168%_)))
                                  (let ((_%hd2215122175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2215022171%_)))
                                        (_%tl2215222178%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2215022171%_))))
                                    (if (gx#stx-pair? _%tl2215222178%_)
                                        (let ((_%e2215322181%_
                                               (gx#syntax-e _%tl2215222178%_)))
                                          (let ((_%hd2215422185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2215322181%_)))
                                                (_%tl2215522188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2215322181%_))))
                                            (if (gx#stx-pair? _%tl2215522188%_)
                                                (let ((_%e2215622191%_
                                                       (gx#syntax-e
                                                        _%tl2215522188%_)))
                                                  (let ((_%hd2215722195%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2215622191%_)))
                                                        (_%tl2215822198%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2215622191%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2215822198%_)
                                                        ((lambda (_%g2214722201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2214822203%_
                          _%g2214922204%_)
                   _%g2214922204%_)
                 _%hd2215722195%_
                 _%hd2215422185%_
                 _%hd2215122175%_)
                (_%g2214522164%_ _%g2214622168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2214522164%_
                                                 _%g2214622168%_))))
                                        (_%g2214522164%_ _%g2214622168%_))))
                                (_%g2214522164%_ _%g2214622168%_)))))
                    (_%g2214422221%_ _%slot-spec22142%_))))
               (_%class-opt?20823%_
                (lambda (_%key22139%_)
                  (let ((__tmp26919 (gx#stx-e _%key22139%_)))
                    (declare (not safe))
                    (##memq __tmp26919
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%g2082520852%_
                (lambda (_%g2082620848%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2082620848%_)))
               (_%g2082422135%_
                (lambda (_%g2082620856%_)
                  (if (gx#stx-pair? _%g2082620856%_)
                      (let ((_%e2083220859%_ (gx#syntax-e _%g2082620856%_)))
                        (let ((_%hd2083320863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2083220859%_)))
                              (_%tl2083420866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2083220859%_))))
                          (if (gx#stx-pair? _%tl2083420866%_)
                              (let ((_%e2083520869%_
                                     (gx#syntax-e _%tl2083420866%_)))
                                (let ((_%hd2083620873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2083520869%_)))
                                      (_%tl2083720876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2083520869%_))))
                                  (if (gx#stx-pair? _%tl2083720876%_)
                                      (let ((_%e2083820879%_
                                             (gx#syntax-e _%tl2083720876%_)))
                                        (let ((_%hd2083920883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2083820879%_)))
                                              (_%tl2084020886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2083820879%_))))
                                          (if (gx#stx-pair? _%tl2084020886%_)
                                              (let ((_%e2084120889%_
                                                     (gx#syntax-e
                                                      _%tl2084020886%_)))
                                                (let ((_%hd2084220893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e2084120889%_)))
                                                      (_%tl2084320896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e2084120889%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl2084320896%_)
                                                      (let ((_%e2084420899%_
                                                             (gx#syntax-e
                                                              _%tl2084320896%_)))
                                                        (let ((_%hd2084520903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e2084420899%_)))
                      (_%tl2084620906%_
                       (let () (declare (not safe)) (##cdr _%e2084420899%_))))
                  ((lambda (_%g2082720909%_
                            _%g2082820911%_
                            _%g2082920912%_
                            _%g2083020913%_
                            _%g2083120914%_)
                     (if (and (gx#identifier? _%g2083120914%_)
                              (gx#identifier-list? _%g2083020913%_)
                              (or (gx#identifier? _%g2082920912%_)
                                  (gx#stx-false? _%g2082920912%_))
                              (gx#identifier? _%g2082820911%_)
                              (gx#stx-plist?
                               _%g2082720909%_
                               _%class-opt?20823%_))
                         (let* ((_%struct?20954%_
                                 (let ((_%$e20944%_ _%struct?20818%_))
                                   (if _%$e20944%_
                                       _%$e20944%_
                                       (let ((_%$e20948%_
                                              (gx#stx-getq
                                               'struct:
                                               _%g2082720909%_)))
                                         (if _%$e20948%_
                                             (gx#stx-e _%$e20948%_)
                                             '#f)))))
                                (_%slots20961%_
                                 (let ((_%$e20957%_
                                        (gx#stx-getq 'slots: _%g2082720909%_)))
                                   (if _%$e20957%_ _%$e20957%_ '())))
                                (_%mixin-slots20968%_
                                 (let ((_%$e20964%_
                                        (gx#stx-getq 'mixin: _%g2082720909%_)))
                                   (if _%$e20964%_ _%$e20964%_ '())))
                                (_%accessible-slots20971%_
                                 (append (gx#syntax->list _%slots20961%_)
                                         (gx#syntax->list
                                          _%mixin-slots20968%_)))
                                (_%metaclass20974%_
                                 (gx#stx-getq 'metaclass: _%g2082720909%_))
                                (_%g2097720994%_
                                 (lambda (_%g2097820990%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2097820990%_)))
                                (_%g2097622131%_
                                 (lambda (_%g2097820998%_)
                                   (if (gx#stx-pair/null? _%g2097820998%_)
                                       (let ((_g26920_
                                              (gx#syntax-split-splice
                                               _%g2097820998%_
                                               '0)))
                                         (begin
                                           (let ((_g26921_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g26920_)
                                                        (##values-length
                                                         _g26920_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g26921_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g26921_)))
                                           (let ((_%target2098021001%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g26920_ 0)))
                                                 (_%tl2098221004%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g26920_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2098221004%_)
                                                 (letrec ((_%loop2098321007%_
                                                           (lambda (_%hd2098121011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%slot2098721014%_)
                     (if (gx#stx-pair? _%hd2098121011%_)
                         (let ((_%e2098421016%_
                                (gx#syntax-e _%hd2098121011%_)))
                           (let ((_%lp-hd2098521020%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2098421016%_)))
                                 (_%lp-tl2098621023%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2098421016%_))))
                             (_%loop2098321007%_
                              _%lp-tl2098621023%_
                              (cons _%lp-hd2098521020%_ _%slot2098721014%_))))
                         (let ((_%slot2098821026%_
                                (reverse _%slot2098721014%_)))
                           ((lambda (_%g2097921029%_)
                              (let* ((_%g2105021058%_
                                      (lambda (_%g2105121054%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2105121054%_)))
                                     (_%g2104922123%_
                                      (lambda (_%g2105121062%_)
                                        ((lambda (_%g2105221065%_)
                                           (let* ((_%g2107821086%_
                                                   (lambda (_%g2107921082%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g2107921082%_)))
                                                  (_%g2107722115%_
                                                   (lambda (_%g2107921090%_)
                                                     ((lambda (_%g2108021093%_)
                                                        (let* ((_%g2110621114%_
                                                                (lambda (_%g2110721110%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2110721110%_)))
                       (_%g2110522111%_
                        (lambda (_%g2110721118%_)
                          ((lambda (_%g2110821121%_)
                             (let* ((_%g2113421142%_
                                     (lambda (_%g2113521138%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g2113521138%_)))
                                    (_%g2113322107%_
                                     (lambda (_%g2113521146%_)
                                       ((lambda (_%g2113621149%_)
                                          (let* ((_%g2116221170%_
                                                  (lambda (_%g2116321166%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g2116321166%_)))
                                                 (_%g2116122103%_
                                                  (lambda (_%g2116321174%_)
                                                    ((lambda (_%g2116421177%_)
                                                       (let* ((_%g2119021198%_
                                                               (lambda (_%g2119121194%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2119121194%_)))
                      (_%g2118922099%_
                       (lambda (_%g2119121202%_)
                         ((lambda (_%g2119221205%_)
                            (let* ((_%g2121821226%_
                                    (lambda (_%g2121921222%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2121921222%_)))
                                   (_%g2121722095%_
                                    (lambda (_%g2121921230%_)
                                      ((lambda (_%g2122021233%_)
                                         (let* ((_%g2124621254%_
                                                 (lambda (_%g2124721250%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2124721250%_)))
                                                (_%g2124522091%_
                                                 (lambda (_%g2124721258%_)
                                                   ((lambda (_%g2124821261%_)
                                                      (let* ((_%g2127421282%_
                                                              (lambda (_%g2127521278%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g2127521278%_)))
                     (_%g2127322083%_
                      (lambda (_%g2127521286%_)
                        ((lambda (_%g2127621289%_)
                           (let* ((_%g2130221310%_
                                   (lambda (_%g2130321306%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g2130321306%_)))
                                  (_%g2130122079%_
                                   (lambda (_%g2130321314%_)
                                     ((lambda (_%g2130421317%_)
                                        (let* ((_%g2133021338%_
                                                (lambda (_%g2133121334%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2133121334%_)))
                                               (_%g2132922075%_
                                                (lambda (_%g2133121342%_)
                                                  ((lambda (_%g2133221345%_)
                                                     (let* ((_%g2135821366%_
                                                             (lambda (_%g2135921362%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g2135921362%_)))
                                                            (_%g2135722040%_
                                                             (lambda (_%g2135921370%_)
                                                               ((lambda (_%g2136021373%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g2138621394%_
                                  (lambda (_%g2138721390%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2138721390%_)))
                                 (_%g2138522036%_
                                  (lambda (_%g2138721398%_)
                                    ((lambda (_%g2138821401%_)
                                       (let* ((_%g2141421422%_
                                               (lambda (_%g2141521418%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2141521418%_)))
                                              (_%g2141322024%_
                                               (lambda (_%g2141521426%_)
                                                 ((lambda (_%g2141621429%_)
                                                    (let* ((_%g2144221450%_
                                                            (lambda (_%g2144321446%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2144321446%_)))
                                                           (_%g2144122012%_
                                                            (lambda (_%g2144321454%_)
                                                              ((lambda (_%g2144421457%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%g2147021478%_
                                 (lambda (_%g2147121474%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2147121474%_)))
                                (_%g2146922008%_
                                 (lambda (_%g2147121482%_)
                                   ((lambda (_%g2147221485%_)
                                      (let* ((_%g2149821506%_
                                              (lambda (_%g2149921502%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g2149921502%_)))
                                             (_%g2149722004%_
                                              (lambda (_%g2149921510%_)
                                                ((lambda (_%g2150021513%_)
                                                   (let* ((_%g2152621552%_
                                                           (lambda (_%g2152721548%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g2152721548%_)))
                                                          (_%g2152521916%_
                                                           (lambda (_%g2152721556%_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2152721556%_)
                         (let ((_g26922_
                                (gx#syntax-split-splice _%g2152721556%_ '0)))
                           (begin
                             (let ((_g26923_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g26922_)
                                          (##values-length _g26922_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g26923_ 2)))
                                   (error "Context expects 2 values"
                                          _g26923_)))
                             (let ((_%target2153021559%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g26922_ 0)))
                                   (_%tl2153221562%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g26922_ 1))))
                               (if (gx#stx-null? _%tl2153221562%_)
                                   (letrec ((_%loop2153321565%_
                                             (lambda (_%hd2153121569%_
                                                      _%def-setf2153721572%_
                                                      _%def-getf2153821573%_)
                                               (if (gx#stx-pair?
                                                    _%hd2153121569%_)
                                                   (let ((_%e2153421575%_
                                                          (gx#syntax-e
                                                           _%hd2153121569%_)))
                                                     (let ((_%lp-hd2153521579%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e2153421575%_)))
                                                           (_%lp-tl2153621582%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e2153421575%_))))
                                                       (if (gx#stx-pair?
                                                            _%lp-hd2153521579%_)
                                                           (let ((_%e2154121585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%lp-hd2153521579%_)))
                     (let ((_%hd2154221589%_
                            (let ()
                              (declare (not safe))
                              (##car _%e2154121585%_)))
                           (_%tl2154321592%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e2154121585%_))))
                       (if (gx#stx-pair? _%tl2154321592%_)
                           (let ((_%e2154421595%_
                                  (gx#syntax-e _%tl2154321592%_)))
                             (let ((_%hd2154521599%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e2154421595%_)))
                                   (_%tl2154621602%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e2154421595%_))))
                               (if (gx#stx-null? _%tl2154621602%_)
                                   (_%loop2153321565%_
                                    _%lp-tl2153621582%_
                                    (cons _%hd2154521599%_
                                          _%def-setf2153721572%_)
                                    (cons _%hd2154221589%_
                                          _%def-getf2153821573%_))
                                   (_%g2152621552%_ _%g2152721556%_))))
                           (_%g2152621552%_ _%g2152721556%_))))
                   (_%g2152621552%_ _%g2152721556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%def-setf2153921605%_
                                                          (reverse _%def-setf2153721572%_))
                                                         (_%def-getf2154021607%_
                                                          (reverse _%def-getf2153821573%_)))
                                                     ((lambda (_%g2152821609%_
                                                               _%g2152921611%_)
                                                        (let* ((_%g2162821654%_
                                                                (lambda (_%g2162921650%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g2162921650%_)))
                       (_%g2162721764%_
                        (lambda (_%g2162921658%_)
                          (if (gx#stx-pair/null? _%g2162921658%_)
                              (let ((_g26924_
                                     (gx#syntax-split-splice
                                      _%g2162921658%_
                                      '0)))
                                (begin
                                  (let ((_g26925_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g26924_)
                                               (##values-length _g26924_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g26925_ 2)))
                                        (error "Context expects 2 values"
                                               _g26925_)))
                                  (let ((_%target2163221661%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g26924_ 0)))
                                        (_%tl2163421664%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g26924_ 1))))
                                    (if (gx#stx-null? _%tl2163421664%_)
                                        (letrec ((_%loop2163521667%_
                                                  (lambda (_%hd2163321671%_
                                                           _%def-usetf2163921674%_
                                                           _%def-ugetf2164021675%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2163321671%_)
                                                        (let ((_%e2163621677%_
                                                               (gx#syntax-e
                                                                _%hd2163321671%_)))
                                                          (let ((_%lp-hd2163721681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2163621677%_)))
                        (_%lp-tl2163821684%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2163621677%_))))
                    (if (gx#stx-pair? _%lp-hd2163721681%_)
                        (let ((_%e2164321687%_
                               (gx#syntax-e _%lp-hd2163721681%_)))
                          (let ((_%hd2164421691%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2164321687%_)))
                                (_%tl2164521694%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2164321687%_))))
                            (if (gx#stx-pair? _%tl2164521694%_)
                                (let ((_%e2164621697%_
                                       (gx#syntax-e _%tl2164521694%_)))
                                  (let ((_%hd2164721701%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2164621697%_)))
                                        (_%tl2164821704%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2164621697%_))))
                                    (if (gx#stx-null? _%tl2164821704%_)
                                        (_%loop2163521667%_
                                         _%lp-tl2163821684%_
                                         (cons _%hd2164721701%_
                                               _%def-usetf2163921674%_)
                                         (cons _%hd2164421691%_
                                               _%def-ugetf2164021675%_))
                                        (_%g2162821654%_ _%g2162921658%_))))
                                (_%g2162821654%_ _%g2162921658%_))))
                        (_%g2162821654%_ _%g2162921658%_))))
                (let ((_%def-usetf2164121707%_
                       (reverse _%def-usetf2163921674%_))
                      (_%def-ugetf2164221709%_
                       (reverse _%def-ugetf2164021675%_)))
                  ((lambda (_%g2163021711%_ _%g2163121713%_)
                     (_%wrap20820%_
                      (cons (gx#datum->syntax '#f 'begin)
                            (cons _%g2144421457%_
                                  (cons _%g2150021513%_
                                        (cons _%g2147221485%_
                                              (foldr (lambda (_%g2173121740%_
                                                              _%g2173221743%_)
                                                       (cons _%g2173121740%_
                                                             _%g2173221743%_))
                                                     (foldr (lambda (_%g2173321746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g2173421749%_)
                      (cons _%g2173321746%_ _%g2173421749%_))
                    (foldr (lambda (_%g2173521752%_ _%g2173621755%_)
                             (cons _%g2173521752%_ _%g2173621755%_))
                           (foldr (lambda (_%g2173721758%_ _%g2173821761%_)
                                    (cons _%g2173721758%_ _%g2173821761%_))
                                  '()
                                  _%g2163021711%_)
                           _%g2163121713%_)
                    _%g2152821609%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2152921611%_)))))))
                   _%def-usetf2164121707%_
                   _%def-ugetf2164221709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2163521667%_
                                           _%target2163221661%_
                                           '()
                                           '()))
                                        (_%g2162821654%_ _%g2162921658%_)))))
                              (_%g2162821654%_ _%g2162921658%_)))))
                  (_%g2162721764%_
                   (gx#stx-map
                    (lambda (_%ref21768%_)
                      (let* ((_%g2177121790%_
                              (lambda (_%g2177221786%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2177221786%_)))
                             (_%g2177021912%_
                              (lambda (_%g2177221794%_)
                                (if (gx#stx-pair? _%g2177221794%_)
                                    (let ((_%e2177621797%_
                                           (gx#syntax-e _%g2177221794%_)))
                                      (let ((_%hd2177721801%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2177621797%_)))
                                            (_%tl2177821804%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2177621797%_))))
                                        (if (gx#stx-pair? _%tl2177821804%_)
                                            (let ((_%e2177921807%_
                                                   (gx#syntax-e
                                                    _%tl2177821804%_)))
                                              (let ((_%hd2178021811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2177921807%_)))
                                                    (_%tl2178121814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2177921807%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2178121814%_)
                                                    (let ((_%e2178221817%_
                                                           (gx#syntax-e
                                                            _%tl2178121814%_)))
                                                      (let ((_%hd2178321821%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2178221817%_)))
                    (_%tl2178421824%_
                     (let () (declare (not safe)) (##cdr _%e2178221817%_))))
                (if (gx#stx-null? _%tl2178421824%_)
                    ((lambda (_%g2177321827%_ _%g2177421829%_ _%g2177521830%_)
                       (let* ((_%g2184821863%_
                               (lambda (_%g2184921859%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2184921859%_)))
                              (_%g2184721908%_
                               (lambda (_%g2184921867%_)
                                 (if (gx#stx-pair? _%g2184921867%_)
                                     (let ((_%e2185221870%_
                                            (gx#syntax-e _%g2184921867%_)))
                                       (let ((_%hd2185321874%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e2185221870%_)))
                                             (_%tl2185421877%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e2185221870%_))))
                                         (if (gx#stx-pair? _%tl2185421877%_)
                                             (let ((_%e2185521880%_
                                                    (gx#syntax-e
                                                     _%tl2185421877%_)))
                                               (let ((_%hd2185621884%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2185521880%_)))
                                                     (_%tl2185721887%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2185521880%_))))
                                                 (if (gx#stx-null?
                                                      _%tl2185721887%_)
                                                     ((lambda (_%g2185021890%_
                                                               _%g2185121892%_)
                                                        (cons (_%wrap20820%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _%g2185121892%_
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@mop.accessor)
                                                           (cons _%g2113621149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g2177521830%_ (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'make-class-slot-unchecked-accessor)
                         (cons _%g2083120914%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g2177521830%_ '()))
                                     '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_%wrap20820%_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%g2185021890%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@mop.mutator)
                         (cons _%g2113621149%_
                               (cons _%g2177521830%_ (cons '#f '()))))
                   (cons (cons (gx#datum->syntax
                                '#f
                                'make-class-slot-unchecked-mutator)
                               (cons _%g2083120914%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2177521830%_ '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '())))
              _%hd2185621884%_
              _%hd2185321874%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2184821863%_
                                                      _%g2184921867%_))))
                                             (_%g2184821863%_
                                              _%g2184921867%_))))
                                     (_%g2184821863%_ _%g2184921867%_)))))
                         (_%g2184721908%_
                          (list (gx#stx-identifier
                                 _%g2177421829%_
                                 '"&"
                                 _%g2177421829%_)
                                (gx#stx-identifier
                                 _%g2177321827%_
                                 '"&"
                                 _%g2177321827%_)))))
                     _%hd2178321821%_
                     _%hd2178021811%_
                     _%hd2177721801%_)
                    (_%g2177121790%_ _%g2177221794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2177121790%_
                                                     _%g2177221794%_))))
                                            (_%g2177121790%_
                                             _%g2177221794%_))))
                                    (_%g2177121790%_ _%g2177221794%_)))))
                        (_%g2177021912%_ _%ref21768%_)))
                    _%accessible-slots20971%_))))
              _%def-setf2153921605%_
              _%def-getf2154021607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop2153321565%_
                                      _%target2153021559%_
                                      '()
                                      '()))
                                   (_%g2152621552%_ _%g2152721556%_)))))
                         (_%g2152621552%_ _%g2152721556%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g2152521916%_
                                                      (gx#stx-map
                                                       (lambda (_%ref21920%_)
                                                         (let* ((_%g2192321942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2192421938%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2192421938%_)))
                        (_%g2192222000%_
                         (lambda (_%g2192421946%_)
                           (if (gx#stx-pair? _%g2192421946%_)
                               (let ((_%e2192821949%_
                                      (gx#syntax-e _%g2192421946%_)))
                                 (let ((_%hd2192921953%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e2192821949%_)))
                                       (_%tl2193021956%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e2192821949%_))))
                                   (if (gx#stx-pair? _%tl2193021956%_)
                                       (let ((_%e2193121959%_
                                              (gx#syntax-e _%tl2193021956%_)))
                                         (let ((_%hd2193221963%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e2193121959%_)))
                                               (_%tl2193321966%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e2193121959%_))))
                                           (if (gx#stx-pair? _%tl2193321966%_)
                                               (let ((_%e2193421969%_
                                                      (gx#syntax-e
                                                       _%tl2193321966%_)))
                                                 (let ((_%hd2193521973%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e2193421969%_)))
                                                       (_%tl2193621976%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e2193421969%_))))
                                                   (if (gx#stx-null?
                                                        _%tl2193621976%_)
                                                       ((lambda (_%g2192521979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2192621981%_
                         _%g2192721982%_)
                  (cons (_%wrap20820%_
                         (cons (gx#datum->syntax '#f 'def)
                               (cons _%g2192621981%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@mop.accessor)
                                                             (cons _%g2113621149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g2192721982%_ (cons '#t '()))))
               (cons (cons (gx#datum->syntax '#f 'make-class-slot-accessor)
                           (cons _%g2083120914%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2192721982%_ '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                        (cons (_%wrap20820%_
                               (cons (gx#datum->syntax '#f 'def)
                                     (cons _%g2192521979%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@mop.mutator)
                           (cons _%g2113621149%_
                                 (cons _%g2192721982%_ (cons '#t '()))))
                     (cons (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-mutator)
                                 (cons _%g2083120914%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g2192721982%_ '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                              '())))
                _%hd2193521973%_
                _%hd2193221963%_
                _%hd2192921953%_)
               (_%g2192321942%_ _%g2192421946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2192321942%_
                                                _%g2192421946%_))))
                                       (_%g2192321942%_ _%g2192421946%_))))
                               (_%g2192321942%_ _%g2192421946%_)))))
                   (_%g2192222000%_ _%ref21920%_)))
               _%accessible-slots20971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g2149921510%_))))
                                        (_%g2149722004%_
                                         (_%wrap20820%_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _%g2082820911%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@mop.predicate)
                                      (cons _%g2113621149%_ '()))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons _%g2083120914%_ '()))
                                      '())))
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g2147121482%_))))
                           (_%g2146922008%_
                            (if (gx#stx-false? _%g2082920912%_)
                                (cons (gx#datum->syntax '#f 'begin) '())
                                (_%wrap20820%_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _%g2082920912%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin-annotation)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '@mop.constructor)
                             (cons _%g2113621149%_ '()))
                       (cons (cons (gx#datum->syntax '#f 'lambda)
                                   (cons (gx#datum->syntax '#f '$args)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'apply)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'make-instance)
                                                           (cons _%g2083120914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))))
                       _%g2144321454%_))))
              (_%g2144122012%_
               (_%wrap20820%_
                (cons (gx#datum->syntax '#f 'def)
                      (cons _%g2083120914%_
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.class)
                                                    (cons _%g2105221065%_
                                                          (cons _%g2116421177%_
                                                                (cons (foldr (lambda (_%g2201522018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _%g2201622021%_)
                                       (cons _%g2201522018%_ _%g2201622021%_))
                                     '()
                                     _%g2097921029%_)
                              (cons _%g2110821121%_
                                    (cons _%g2119221205%_
                                          (cons _%g2122021233%_
                                                (cons _%g2124821261%_
                                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g2141621429%_ '())))
                                  '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g2141521426%_))))
                                         (_%g2141322024%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'make-class-type)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%g2105221065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote)
                          (cons _%g2108021093%_ '()))
                    (cons _%g2138821401%_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons (foldr (lambda (_%g2202722030%_
                                                            _%g2202822033%_)
                                                     (cons _%g2202722030%_
                                                           _%g2202822033%_))
                                                   '()
                                                   _%g2097921029%_)
                                            '()))
                                (cons _%g2136021373%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2110821121%_ '()))
                                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g2138721398%_))))
                            (_%g2138522036%_
                             (cons (gx#datum->syntax '#f 'list)
                                   _%g2083020913%_))))
                        _%g2135921370%_))))
               (_%g2135722040%_
                (if (gx#stx-e _%metaclass20974%_)
                    (let* ((_%g2204422052%_
                            (lambda (_%g2204522048%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2204522048%_)))
                           (_%g2204322071%_
                            (lambda (_%g2204522056%_)
                              ((lambda (_%g2204622059%_)
                                 (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons 'metaclass:
                                                         (cons '::
                                                               (cons _%g2204622059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '::
                                                   (cons _%g2133221345%_
                                                         '())))))
                               _%g2204522056%_))))
                      (_%g2204322071%_ _%metaclass20974%_))
                    _%g2133221345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g2133121342%_))))
                                          (_%g2132922075%_
                                           (if _%struct?20954%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         (cons 'struct: '#t))
                   (cons ':: (cons _%g2130421317%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2130421317%_))))
                                      _%g2130321314%_))))
                             (_%g2130122079%_
                              (if (gx#stx-e _%g2122021233%_)
                                  (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons 'final: '#t))
                                              (cons '::
                                                    (cons _%g2127621289%_
                                                          '()))))
                                  _%g2127621289%_))))
                         _%g2127521286%_))))
                (_%g2127322083%_
                 (let ((_%$e22087%_
                        (gx#stx-getq 'properties: _%g2082720909%_)))
                   (if _%$e22087%_
                       _%$e22087%_
                       (cons (gx#datum->syntax '#f '@list) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g2124721258%_))))
                                           (_%g2124522091%_
                                            (if (gx#stx-e _%metaclass20974%_)
                                                (gx#core-quote-syntax
                                                 _%metaclass20974%_)
                                                '#f))))
                                       _%g2121921230%_))))
                              (_%g2121722095%_
                               (gx#stx-getq 'final: _%g2082720909%_))))
                          _%g2119121202%_))))
                 (_%g2118922099%_ _%struct?20954%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g2116321174%_))))
                                            (_%g2116122103%_
                                             (gx#stx-map
                                              gx#core-quote-syntax
                                              _%g2083020913%_))))
                                        _%g2113521146%_))))
                               (_%g2113322107%_
                                (gx#core-quote-syntax _%g2083120914%_))))
                           _%g2110721118%_))))
                  (_%g2110522111%_
                   (gx#stx-getq 'constructor: _%g2082720909%_))))
              _%g2107921090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g2107722115%_
                                              (let ((_%$e22119%_
                                                     (gx#stx-getq
                                                      'name:
                                                      _%g2082720909%_)))
                                                (if _%$e22119%_
                                                    _%$e22119%_
                                                    _%g2083120914%_)))))
                                         _%g2105121062%_))))
                                (_%g2104922123%_
                                 (let ((_%$e22127%_
                                        (gx#stx-getq 'id: _%g2082720909%_)))
                                   (if _%$e22127%_
                                       _%$e22127%_
                                       (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                        _%g2083120914%_))))))
                            _%slot2098821026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2098321007%_
                                                    _%target2098021001%_
                                                    '()))
                                                 (_%g2097720994%_
                                                  _%g2097820998%_)))))
                                       (_%g2097720994%_ _%g2097820998%_)))))
                           (_%g2097622131%_
                            (gx#stx-map _%slot-name20822%_ _%slots20961%_)))
                         (_%g2082520852%_ _%g2082620856%_)))
                   _%tl2084620906%_
                   _%hd2084520903%_
                   _%hd2084220893%_
                   _%hd2083920883%_
                   _%hd2083620873%_)))
              (_%g2082520852%_ _%g2082620856%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g2082520852%_
                                               _%g2082620856%_))))
                                      (_%g2082520852%_ _%g2082620856%_))))
                              (_%g2082520852%_ _%g2082620856%_))))
                      (_%g2082520852%_ _%g2082620856%_)))))
          (_%g2082422135%_ _%stx20816%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx22249%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22249%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx22252%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx22252%_ '#f))))
