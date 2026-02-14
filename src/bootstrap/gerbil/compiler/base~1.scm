(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g199764_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g199766_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g199768_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g199770_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g199771_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g199773_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g199774_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g199776_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g199777_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g199779_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g199780_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx198724%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx198724%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx198727%_)
        (let* ((_%g198730198754%_
                (lambda (_%g198731198750%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198731198750%_))))
               (_%g198729199053%_
                (lambda (_%g198731198758%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198731198758%_))
                      (let ((_%e198734198761%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198731198758%_))))
                        (let ((_%hd198735198765%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198734198761%_)))
                              (_%tl198736198768%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198734198761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198736198768%_))
                              (let ((_%e198737198771%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198736198768%_))))
                                (let ((_%hd198738198775%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198737198771%_)))
                                      (_%tl198739198778%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198737198771%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198739198778%_))
                                      (let ((_g199755_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198739198778%_
                                                '0))))
                                        (begin
                                          (let ((_g199756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g199755_)
                                                       (##values-length
                                                        _g199755_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g199756_ 2)))
                                                (error "Context expects 2 values"
                                                       _g199756_)))
                                          (let ((_%target198740198781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g199755_ 0)))
                                                (_%tl198742198784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g199755_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198742198784%_))
                                                (letrec ((_%loop198743198787%_
                                                          (lambda (_%hd198741198791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause198747198794%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198741198791%_))
                        (let ((_%e198744198796%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd198741198791%_))))
                          (let ((_%lp-hd198745198800%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198744198796%_)))
                                (_%lp-tl198746198803%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198744198796%_))))
                            (_%loop198743198787%_
                             _%lp-tl198746198803%_
                             (cons _%lp-hd198745198800%_
                                   _%clause198747198794%_))))
                        (let ((_%clause198748198806%_
                               (reverse _%clause198747198794%_)))
                          ((lambda (_%g198732198809%_ _%g198733198811%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g198733198811%_))
                                 (let* ((_%g198830198847%_
                                         (lambda (_%g198831198843%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g198831198843%_))))
                                        (_%g198829198906%_
                                         (lambda (_%g198831198851%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g198831198851%_))
                                               (let ((_g199757_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g198831198851%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g199758_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g199757_)
                        (##values-length _g199757_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g199758_ 2)))
                 (error "Context expects 2 values" _g199758_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target198833198854%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g199757_
                                                             0)))
                                                         (_%tl198835198857%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g199757_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198835198857%_))
                                                         (letrec ((_%loop198836198860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd198834198864%_ _%clause198840198867%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd198834198864%_))
                                 (let ((_%e198837198869%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd198834198864%_))))
                                   (let ((_%lp-hd198838198873%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198837198869%_)))
                                         (_%lp-tl198839198876%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198837198869%_))))
                                     (_%loop198836198860%_
                                      _%lp-tl198839198876%_
                                      (cons _%lp-hd198838198873%_
                                            _%clause198840198867%_))))
                                 (let ((_%clause198841198879%_
                                        (reverse _%clause198840198867%_)))
                                   ((lambda (_%g198832198882%_)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'lambda))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '$stx))
                                                        '())
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'ast-case))
                      (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '$stx))
                            (cons _%g198733198811%_
                                  (let ((__tmp199759
                                         (lambda (_%g198897198900%_
                                                  _%g198898198903%_)
                                           (cons _%g198897198900%_
                                                 _%g198898198903%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp199759
                                     '()
                                     _%g198832198882%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause198841198879%_))))))
                   (_%loop198836198860%_ _%target198833198854%_ '()))
                 (_%g198830198847%_ _%g198831198851%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198830198847%_
                                                _%g198831198851%_)))))
                                   (_%g198829198906%_
                                    (let ((__tmp199762
                                           (lambda (_%clause198910%_)
                                             (let* ((_%__stx199674199675%_
                                                     _%clause198910%_)
                                                    (_%g198914198941%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx199674199675%_)))))
                                               (let ((_%__kont199677199678%_
                                                      (lambda (_%g198916199026%_
                                                               _%g198917199028%_)
                                                        (cons _%g198917199028%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g198916199026%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont199679199680%_
                                                      (lambda (_%g198924198978%_
                                                               _%g198925198980%_
                                                               _%g198926198981%_)
                                                        (cons _%g198926198981%_
                                                              (cons _%g198925198980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g198924198978%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx199674199675%_))
                                                     (let ((_%e198918199006%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx199674199675%_))))
                                                       (let ((_%tl198920199013%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198918199006%_)))
                     (_%hd198919199010%_
                      (let () (declare (not safe)) (##car _%e198918199006%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl198920199013%_))
                     (let ((_%e198921199016%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl198920199013%_))))
                       (let ((_%tl198923199023%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198921199016%_)))
                             (_%hd198922199020%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198921199016%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198923199023%_))
                             (_%__kont199677199678%_
                              _%hd198922199020%_
                              _%hd198919199010%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl198923199023%_))
                                 (let ((_%e198933198968%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl198923199023%_))))
                                   (let ((_%tl198935198975%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198933198968%_)))
                                         (_%hd198934198972%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198933198968%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl198935198975%_))
                                         (_%__kont199679199680%_
                                          _%hd198934198972%_
                                          _%hd198922199020%_
                                          _%hd198919199010%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g198914198941%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g198914198941%_))))))
                     (let () (declare (not safe)) (_%g198914198941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g198914198941%_)))))))
                                          (__tmp199760
                                           (let ((__tmp199761
                                                  (lambda (_%g199044199047%_
                                                           _%g199045199050%_)
                                                    (cons _%g199044199047%_
                                                          _%g199045199050%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp199761
                                              '()
                                              _%g198732198809%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp199762 __tmp199760))))
                                 (_%g198730198754%_ _%g198731198758%_)))
                           _%clause198748198806%_
                           _%hd198738198775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop198743198787%_
                                                   _%target198740198781%_
                                                   '()))
                                                (_%g198730198754%_
                                                 _%g198731198758%_)))))
                                      (_%g198730198754%_ _%g198731198758%_))))
                              (_%g198730198754%_ _%g198731198758%_))))
                      (_%g198730198754%_ _%g198731198758%_)))))
          (_%g198729199053%_ _%stx198727%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj199724
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj199724
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj199724
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj199724
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 ':init! '12 '#f '#f))
        (let ((__tmp199763 |gxc[1]#_g199764_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 __tmp199763 '3 '#f '#f))
        (let ((__tmp199765 |gxc[1]#_g199766_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 __tmp199765 '13 '#f '#f))
        (let ((__tmp199767 |gxc[1]#_g199768_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 __tmp199767 '14 '#f '#f))
        (let ((__tmp199769
               (cons (cons 'gensyms |gxc[1]#_g199770_|)
                     (cons (cons 'bindings |gxc[1]#_g199771_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 __tmp199769 '15 '#f '#f))
        (let ((__tmp199772
               (cons (cons 'gensyms |gxc[1]#_g199773_|)
                     (cons (cons 'bindings |gxc[1]#_g199774_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 __tmp199772 '16 '#f '#f))
        (let ((__tmp199775
               (cons (cons 'gensyms |gxc[1]#_g199776_|)
                     (cons (cons 'bindings |gxc[1]#_g199777_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 __tmp199775 '17 '#f '#f))
        (let ((__tmp199778
               (cons (cons 'gensyms |gxc[1]#_g199779_|)
                     (cons (cons 'bindings |gxc[1]#_g199780_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 __tmp199778 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199724 '() '20 '#f '#f))
        __obj199724))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx199059%_)
        (let* ((_%g199063199077%_
                (lambda (_%g199064199073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199064199073%_))))
               (_%g199062199118%_
                (lambda (_%g199064199081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199064199081%_))
                      (let ((_%e199066199084%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199064199081%_))))
                        (let ((_%hd199067199088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199066199084%_)))
                              (_%tl199068199091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199066199084%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199068199091%_))
                              (let ((_%e199069199094%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199068199091%_))))
                                (let ((_%hd199070199098%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199069199094%_)))
                                      (_%tl199071199101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199069199094%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199071199101%_))
                                      ((lambda (_%g199065199104%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'with-lock))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '__verbose-mutex))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '() (cons _%g199065199104%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd199070199098%_)
                                      (_%g199063199077%_ _%g199064199081%_))))
                              (_%g199063199077%_ _%g199064199081%_))))
                      (_%g199063199077%_ _%g199064199081%_)))))
          (_%g199062199118%_ _%$stx199059%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx199122%_)
        (let* ((_%g199126199140%_
                (lambda (_%g199127199136%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199127199136%_))))
               (_%g199125199181%_
                (lambda (_%g199127199144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199127199144%_))
                      (let ((_%e199129199147%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199127199144%_))))
                        (let ((_%hd199130199151%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199129199147%_)))
                              (_%tl199131199154%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199129199147%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199131199154%_))
                              (let ((_%e199132199157%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199131199154%_))))
                                (let ((_%hd199133199161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199132199157%_)))
                                      (_%tl199134199164%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199132199157%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199134199164%_))
                                      ((lambda (_%g199128199167%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'spawn))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'lambda))
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g199128199167%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd199133199161%_)
                                      (_%g199126199140%_ _%g199127199144%_))))
                              (_%g199126199140%_ _%g199127199144%_))))
                      (_%g199126199140%_ _%g199127199144%_)))))
          (_%g199125199181%_ _%$stx199122%_))))))
