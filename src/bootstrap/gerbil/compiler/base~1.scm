(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g190761_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190763_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190765_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190767_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190768_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190770_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190771_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190773_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190774_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190776_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g190777_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx189721%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx189721%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx189724%_)
        (let* ((_%g189727189751%_
                (lambda (_%g189728189747%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g189728189747%_))))
               (_%g189726190050%_
                (lambda (_%g189728189755%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g189728189755%_))
                      (let ((_%e189731189758%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g189728189755%_))))
                        (let ((_%hd189732189762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e189731189758%_)))
                              (_%tl189733189765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e189731189758%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl189733189765%_))
                              (let ((_%e189734189768%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl189733189765%_))))
                                (let ((_%hd189735189772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e189734189768%_)))
                                      (_%tl189736189775%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e189734189768%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189736189775%_))
                                      (let ((_g190752_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189736189775%_
                                                '0))))
                                        (begin
                                          (let ((_g190753_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g190752_)
                                                       (##values-length
                                                        _g190752_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g190753_ 2)))
                                                (error "Context expects 2 values"
                                                       _g190753_)))
                                          (let ((_%target189737189778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g190752_ 0)))
                                                (_%tl189739189781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g190752_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl189739189781%_))
                                                (letrec ((_%loop189740189784%_
                                                          (lambda (_%hd189738189788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause189744189791%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd189738189788%_))
                        (let ((_%e189741189793%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd189738189788%_))))
                          (let ((_%lp-hd189742189797%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189741189793%_)))
                                (_%lp-tl189743189800%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189741189793%_))))
                            (_%loop189740189784%_
                             _%lp-tl189743189800%_
                             (cons _%lp-hd189742189797%_
                                   _%clause189744189791%_))))
                        (let ((_%clause189745189803%_
                               (reverse _%clause189744189791%_)))
                          ((lambda (_%g189729189806%_ _%g189730189808%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%g189730189808%_))
                                 (let* ((_%g189827189844%_
                                         (lambda (_%g189828189840%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g189828189840%_))))
                                        (_%g189826189903%_
                                         (lambda (_%g189828189848%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g189828189848%_))
                                               (let ((_g190754_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g189828189848%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g190755_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g190754_)
                        (##values-length _g190754_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g190755_ 2)))
                 (error "Context expects 2 values" _g190755_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target189830189851%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g190754_
                                                             0)))
                                                         (_%tl189832189854%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g190754_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl189832189854%_))
                                                         (letrec ((_%loop189833189857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd189831189861%_ _%clause189837189864%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd189831189861%_))
                                 (let ((_%e189834189866%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd189831189861%_))))
                                   (let ((_%lp-hd189835189870%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e189834189866%_)))
                                         (_%lp-tl189836189873%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e189834189866%_))))
                                     (_%loop189833189857%_
                                      _%lp-tl189836189873%_
                                      (cons _%lp-hd189835189870%_
                                            _%clause189837189864%_))))
                                 (let ((_%clause189838189876%_
                                        (reverse _%clause189837189864%_)))
                                   ((lambda (_%g189829189879%_)
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
                            (cons _%g189730189808%_
                                  (let ((__tmp190756
                                         (lambda (_%g189894189897%_
                                                  _%g189895189900%_)
                                           (cons _%g189894189897%_
                                                 _%g189895189900%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp190756
                                     '()
                                     _%g189829189879%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause189838189876%_))))))
                   (_%loop189833189857%_ _%target189830189851%_ '()))
                 (_%g189827189844%_ _%g189828189848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g189827189844%_
                                                _%g189828189848%_)))))
                                   (_%g189826189903%_
                                    (let ((__tmp190759
                                           (lambda (_%clause189907%_)
                                             (let* ((_%__stx190671190672%_
                                                     _%clause189907%_)
                                                    (_%g189911189938%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx190671190672%_)))))
                                               (let ((_%__kont190674190675%_
                                                      (lambda (_%g189913190023%_
                                                               _%g189914190025%_)
                                                        (cons _%g189914190025%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%g189913190023%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190676190677%_
                                                      (lambda (_%g189921189975%_
                                                               _%g189922189977%_
                                                               _%g189923189978%_)
                                                        (cons _%g189923189978%_
                                                              (cons _%g189922189977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%g189921189975%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx190671190672%_))
                                                     (let ((_%e189915190003%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx190671190672%_))))
                                                       (let ((_%tl189917190010%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e189915190003%_)))
                     (_%hd189916190007%_
                      (let () (declare (not safe)) (##car _%e189915190003%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl189917190010%_))
                     (let ((_%e189918190013%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl189917190010%_))))
                       (let ((_%tl189920190020%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e189918190013%_)))
                             (_%hd189919190017%_
                              (let ()
                                (declare (not safe))
                                (##car _%e189918190013%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl189920190020%_))
                             (_%__kont190674190675%_
                              _%hd189919190017%_
                              _%hd189916190007%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl189920190020%_))
                                 (let ((_%e189930189965%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl189920190020%_))))
                                   (let ((_%tl189932189972%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e189930189965%_)))
                                         (_%hd189931189969%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e189930189965%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl189932189972%_))
                                         (_%__kont190676190677%_
                                          _%hd189931189969%_
                                          _%hd189919190017%_
                                          _%hd189916190007%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g189911189938%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g189911189938%_))))))
                     (let () (declare (not safe)) (_%g189911189938%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g189911189938%_)))))))
                                          (__tmp190757
                                           (let ((__tmp190758
                                                  (lambda (_%g190041190044%_
                                                           _%g190042190047%_)
                                                    (cons _%g190041190044%_
                                                          _%g190042190047%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp190758
                                              '()
                                              _%g189729189806%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp190759 __tmp190757))))
                                 (_%g189727189751%_ _%g189728189755%_)))
                           _%clause189745189803%_
                           _%hd189735189772%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop189740189784%_
                                                   _%target189737189778%_
                                                   '()))
                                                (_%g189727189751%_
                                                 _%g189728189755%_)))))
                                      (_%g189727189751%_ _%g189728189755%_))))
                              (_%g189727189751%_ _%g189728189755%_))))
                      (_%g189727189751%_ _%g189728189755%_)))))
          (_%g189726190050%_ _%stx189724%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj190721
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj190721
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj190721
           '(gensyms bindings)
           '5
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj190721
           '(gensyms bindings)
           '7
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 ':init! '12 '#f '#f))
        (let ((__tmp190760 |gxc[1]#_g190761_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 __tmp190760 '3 '#f '#f))
        (let ((__tmp190762 |gxc[1]#_g190763_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 __tmp190762 '13 '#f '#f))
        (let ((__tmp190764 |gxc[1]#_g190765_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 __tmp190764 '14 '#f '#f))
        (let ((__tmp190766
               (cons (cons 'gensyms |gxc[1]#_g190767_|)
                     (cons (cons 'bindings |gxc[1]#_g190768_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 __tmp190766 '15 '#f '#f))
        (let ((__tmp190769
               (cons (cons 'gensyms |gxc[1]#_g190770_|)
                     (cons (cons 'bindings |gxc[1]#_g190771_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 __tmp190769 '16 '#f '#f))
        (let ((__tmp190772
               (cons (cons 'gensyms |gxc[1]#_g190773_|)
                     (cons (cons 'bindings |gxc[1]#_g190774_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 __tmp190772 '17 '#f '#f))
        (let ((__tmp190775
               (cons (cons 'gensyms |gxc[1]#_g190776_|)
                     (cons (cons 'bindings |gxc[1]#_g190777_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 __tmp190775 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj190721 '() '20 '#f '#f))
        __obj190721))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx190056%_)
        (let* ((_%g190060190074%_
                (lambda (_%g190061190070%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190061190070%_))))
               (_%g190059190115%_
                (lambda (_%g190061190078%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190061190078%_))
                      (let ((_%e190063190081%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190061190078%_))))
                        (let ((_%hd190064190085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190063190081%_)))
                              (_%tl190065190088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190063190081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190065190088%_))
                              (let ((_%e190066190091%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190065190088%_))))
                                (let ((_%hd190067190095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190066190091%_)))
                                      (_%tl190068190098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190066190091%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190068190098%_))
                                      ((lambda (_%g190062190101%_)
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
                         (cons '() (cons _%g190062190101%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd190067190095%_)
                                      (_%g190060190074%_ _%g190061190078%_))))
                              (_%g190060190074%_ _%g190061190078%_))))
                      (_%g190060190074%_ _%g190061190078%_)))))
          (_%g190059190115%_ _%$stx190056%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx190119%_)
        (let* ((_%g190123190137%_
                (lambda (_%g190124190133%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g190124190133%_))))
               (_%g190122190178%_
                (lambda (_%g190124190141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g190124190141%_))
                      (let ((_%e190126190144%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g190124190141%_))))
                        (let ((_%hd190127190148%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e190126190144%_)))
                              (_%tl190128190151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e190126190144%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl190128190151%_))
                              (let ((_%e190129190154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl190128190151%_))))
                                (let ((_%hd190130190158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e190129190154%_)))
                                      (_%tl190131190161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e190129190154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl190131190161%_))
                                      ((lambda (_%g190125190164%_)
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
                         (cons _%g190125190164%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd190130190158%_)
                                      (_%g190123190137%_ _%g190124190141%_))))
                              (_%g190123190137%_ _%g190124190141%_))))
                      (_%g190123190137%_ _%g190124190141%_)))))
          (_%g190122190178%_ _%$stx190119%_))))))
