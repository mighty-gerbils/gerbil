(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g132704_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132706_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132708_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132710_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132711_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132713_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132714_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132716_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132717_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132719_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g132720_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx131787%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx131787%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx131790%_)
        (let* ((_%g131793131817%_
                (lambda (_%g131794131813%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g131794131813%_))))
               (_%g131792132120%_
                (lambda (_%g131794131821%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g131794131821%_))
                      (let ((_%e131797131824%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g131794131821%_))))
                        (let ((_%hd131798131828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131797131824%_)))
                              (_%tl131799131831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131797131824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl131799131831%_))
                              (let ((_%e131800131834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl131799131831%_))))
                                (let ((_%hd131801131838%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e131800131834%_)))
                                      (_%tl131802131841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e131800131834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl131802131841%_))
                                      (let ((_g132695_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl131802131841%_
                                                '0))))
                                        (begin
                                          (let ((_g132696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g132695_)
                                                       (##vector-length
                                                        _g132695_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g132696_ 2)))
                                                (error "Context expects 2 values"
                                                       _g132696_)))
                                          (let ((_%target131803131844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g132695_ 0)))
                                                (_%tl131805131847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g132695_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl131805131847%_))
                                                (letrec ((_%loop131806131850%_
                                                          (lambda (_%hd131804131854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause131810131857%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd131804131854%_))
                        (let ((_%e131807131860%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd131804131854%_))))
                          (let ((_%lp-hd131808131864%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131807131860%_)))
                                (_%lp-tl131809131867%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131807131860%_))))
                            (_%loop131806131850%_
                             _%lp-tl131809131867%_
                             (cons _%lp-hd131808131864%_
                                   _%clause131810131857%_))))
                        (let ((_%clause131811131870%_
                               (reverse _%clause131810131857%_)))
                          ((lambda (_%L131874%_ _%L131876%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L131876%_))
                                 (let* ((_%g131895131912%_
                                         (lambda (_%g131896131908%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g131896131908%_))))
                                        (_%g131894131973%_
                                         (lambda (_%g131896131916%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g131896131916%_))
                                               (let ((_g132697_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g131896131916%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g132698_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g132697_)
                        (##vector-length _g132697_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g132698_ 2)))
                 (error "Context expects 2 values" _g132698_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target131898131919%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132697_
                                                             0)))
                                                         (_%tl131900131922%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g132697_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl131900131922%_))
                                                         (letrec ((_%loop131901131925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd131899131929%_ _%clause131905131932%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd131899131929%_))
                                 (let ((_%e131902131935%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd131899131929%_))))
                                   (let ((_%lp-hd131903131939%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e131902131935%_)))
                                         (_%lp-tl131904131942%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e131902131935%_))))
                                     (_%loop131901131925%_
                                      _%lp-tl131904131942%_
                                      (cons _%lp-hd131903131939%_
                                            _%clause131905131932%_))))
                                 (let ((_%clause131906131945%_
                                        (reverse _%clause131905131932%_)))
                                   ((lambda (_%L131949%_)
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
                            (cons _%L131876%_
                                  (let ((__tmp132699
                                         (lambda (_%g131964131967%_
                                                  _%g131965131970%_)
                                           (cons _%g131964131967%_
                                                 _%g131965131970%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp132699 '() _%L131949%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause131906131945%_))))))
                   (_%loop131901131925%_ _%target131898131919%_ '()))
                 (_%g131895131912%_ _%g131896131916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g131895131912%_
                                                _%g131896131916%_)))))
                                   (_%g131894131973%_
                                    (let ((__tmp132702
                                           (lambda (_%clause131977%_)
                                             (let* ((_%__stx132615132616%_
                                                     _%clause131977%_)
                                                    (_%g131981132008%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx132615132616%_)))))
                                               (let ((_%__kont132618132619%_
                                                      (lambda (_%L132093%_
                                                               _%L132095%_)
                                                        (cons _%L132095%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L132093%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont132620132621%_
                                                      (lambda (_%L132045%_
                                                               _%L132047%_
                                                               _%L132048%_)
                                                        (cons _%L132048%_
                                                              (cons _%L132047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L132045%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx132615132616%_))
                                                     (let ((_%e131985132073%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx132615132616%_))))
                                                       (let ((_%tl131987132080%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e131985132073%_)))
                     (_%hd131986132077%_
                      (let () (declare (not safe)) (##car _%e131985132073%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl131987132080%_))
                     (let ((_%e131988132083%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl131987132080%_))))
                       (let ((_%tl131990132090%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e131988132083%_)))
                             (_%hd131989132087%_
                              (let ()
                                (declare (not safe))
                                (##car _%e131988132083%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl131990132090%_))
                             (_%__kont132618132619%_
                              _%hd131989132087%_
                              _%hd131986132077%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl131990132090%_))
                                 (let ((_%e132000132035%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl131990132090%_))))
                                   (let ((_%tl132002132042%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e132000132035%_)))
                                         (_%hd132001132039%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e132000132035%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl132002132042%_))
                                         (_%__kont132620132621%_
                                          _%hd132001132039%_
                                          _%hd131989132087%_
                                          _%hd131986132077%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g131981132008%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g131981132008%_))))))
                     (let () (declare (not safe)) (_%g131981132008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g131981132008%_)))))))
                                          (__tmp132700
                                           (let ((__tmp132701
                                                  (lambda (_%g132111132114%_
                                                           _%g132112132117%_)
                                                    (cons _%g132111132114%_
                                                          _%g132112132117%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp132701
                                              '()
                                              _%L131874%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp132702 __tmp132700))))
                                 (_%g131793131817%_ _%g131794131821%_)))
                           _%clause131811131870%_
                           _%hd131801131838%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop131806131850%_
                                                   _%target131803131844%_
                                                   '()))
                                                (_%g131793131817%_
                                                 _%g131794131821%_)))))
                                      (_%g131793131817%_ _%g131794131821%_))))
                              (_%g131793131817%_ _%g131794131821%_))))
                      (_%g131793131817%_ _%g131794131821%_)))))
          (_%g131792132120%_ _%stx131790%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj132665
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
           __obj132665
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132665
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj132665
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 ':init! '11 '#f '#f))
        (let ((__tmp132703 |gxc[1]#_g132704_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 __tmp132703 '12 '#f '#f))
        (let ((__tmp132705 |gxc[1]#_g132706_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 __tmp132705 '13 '#f '#f))
        (let ((__tmp132707 |gxc[1]#_g132708_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 __tmp132707 '14 '#f '#f))
        (let ((__tmp132709
               (cons (cons 'gensyms |gxc[1]#_g132710_|)
                     (cons (cons 'bindings |gxc[1]#_g132711_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 __tmp132709 '15 '#f '#f))
        (let ((__tmp132712
               (cons (cons 'gensyms |gxc[1]#_g132713_|)
                     (cons (cons 'bindings |gxc[1]#_g132714_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 __tmp132712 '16 '#f '#f))
        (let ((__tmp132715
               (cons (cons 'gensyms |gxc[1]#_g132716_|)
                     (cons (cons 'bindings |gxc[1]#_g132717_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 __tmp132715 '17 '#f '#f))
        (let ((__tmp132718
               (cons (cons 'gensyms |gxc[1]#_g132719_|)
                     (cons (cons 'bindings |gxc[1]#_g132720_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 __tmp132718 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj132665 '() '20 '#f '#f))
        __obj132665))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx132127%_)
        (let* ((_%g132131132145%_
                (lambda (_%g132132132141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132132132141%_))))
               (_%g132130132186%_
                (lambda (_%g132132132149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132132132149%_))
                      (let ((_%e132134132152%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g132132132149%_))))
                        (let ((_%hd132135132156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132134132152%_)))
                              (_%tl132136132159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132134132152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132136132159%_))
                              (let ((_%e132137132162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl132136132159%_))))
                                (let ((_%hd132138132166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132137132162%_)))
                                      (_%tl132139132169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132137132162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl132139132169%_))
                                      ((lambda (_%L132172%_)
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
                         (cons '() (cons _%L132172%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd132138132166%_)
                                      (_%g132131132145%_ _%g132132132149%_))))
                              (_%g132131132145%_ _%g132132132149%_))))
                      (_%g132131132145%_ _%g132132132149%_)))))
          (_%g132130132186%_ _%$stx132127%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx132190%_)
        (let* ((_%g132194132208%_
                (lambda (_%g132195132204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g132195132204%_))))
               (_%g132193132249%_
                (lambda (_%g132195132212%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g132195132212%_))
                      (let ((_%e132197132215%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g132195132212%_))))
                        (let ((_%hd132198132219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132197132215%_)))
                              (_%tl132199132222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132197132215%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl132199132222%_))
                              (let ((_%e132200132225%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl132199132222%_))))
                                (let ((_%hd132201132229%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e132200132225%_)))
                                      (_%tl132202132232%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e132200132225%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl132202132232%_))
                                      ((lambda (_%L132235%_)
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
                         (cons _%L132235%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd132201132229%_)
                                      (_%g132194132208%_ _%g132195132212%_))))
                              (_%g132194132208%_ _%g132195132212%_))))
                      (_%g132194132208%_ _%g132195132212%_)))))
          (_%g132193132249%_ _%$stx132190%_))))))
