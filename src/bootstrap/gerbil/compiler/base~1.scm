(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g192562_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192564_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192566_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192568_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192569_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192571_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192572_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192574_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192575_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192577_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g192578_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx191522%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx191522%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx191525%_)
        (let* ((_%g191528191552%_
                (lambda (_%g191529191548%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191529191548%_))))
               (_%g191527191851%_
                (lambda (_%g191529191556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191529191556%_))
                      (let ((_%e191532191559%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g191529191556%_))))
                        (let ((_%hd191533191563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191532191559%_)))
                              (_%tl191534191566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191532191559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191534191566%_))
                              (let ((_%e191535191569%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191534191566%_))))
                                (let ((_%hd191536191573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191535191569%_)))
                                      (_%tl191537191576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191535191569%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl191537191576%_))
                                      (let ((_g192553_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl191537191576%_
                                                '0))))
                                        (begin
                                          (let ((_g192554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192553_)
                                                       (##values-length
                                                        _g192553_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192554_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192554_)))
                                          (let ((_%target191538191579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g192553_ 0)))
                                                (_%tl191540191582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g192553_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191540191582%_))
                                                (letrec ((_%loop191541191585%_
                                                          (lambda (_%hd191539191589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause191545191592%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd191539191589%_))
                        (let ((_%e191542191594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd191539191589%_))))
                          (let ((_%lp-hd191543191598%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191542191594%_)))
                                (_%lp-tl191544191601%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191542191594%_))))
                            (_%loop191541191585%_
                             _%lp-tl191544191601%_
                             (cons _%lp-hd191543191598%_
                                   _%clause191545191592%_))))
                        (let ((_%clause191546191604%_
                               (reverse _%clause191545191592%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%hd191536191573%_))
                              (let* ((_%g191628191645%_
                                      (lambda (_%g191629191641%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g191629191641%_))))
                                     (_%g191627191704%_
                                      (lambda (_%g191629191649%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%g191629191649%_))
                                            (let ((_g192555_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%g191629191649%_
                                                      '0))))
                                              (begin
                                                (let ((_g192556_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g192555_)
                                                             (##values-length
                                                              _g192555_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g192556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g192556_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target191631191652%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g192555_
                                                          0)))
                                                      (_%tl191633191655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g192555_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191633191655%_))
                                                      (letrec ((_%loop191634191658%_
                                                                (lambda (_%hd191632191662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause191638191665%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd191632191662%_))
                              (let ((_%e191635191667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd191632191662%_))))
                                (let ((_%lp-hd191636191671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191635191667%_)))
                                      (_%lp-tl191637191674%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191635191667%_))))
                                  (_%loop191634191658%_
                                   _%lp-tl191637191674%_
                                   (cons _%lp-hd191636191671%_
                                         _%clause191638191665%_))))
                              (let ((_%clause191639191677%_
                                     (reverse _%clause191638191665%_)))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'lambda))
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '$stx))
                                                  '())
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'ast-case))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '$stx))
                      (cons _%hd191536191573%_
                            (let ((__tmp192557
                                   (lambda (_%g191695191698%_
                                            _%g191696191701%_)
                                     (cons _%g191695191698%_
                                           _%g191696191701%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp192557
                               '()
                               _%clause191639191677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%loop191634191658%_ _%target191631191652%_ '()))
              (_%g191628191645%_ _%g191629191649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g191628191645%_
                                             _%g191629191649%_)))))
                                (_%g191627191704%_
                                 (let ((__tmp192560
                                        (lambda (_%clause191708%_)
                                          (let* ((_%__stx192472192473%_
                                                  _%clause191708%_)
                                                 (_%g191712191739%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx192472192473%_)))))
                                            (let ((_%__kont192475192476%_
                                                   (lambda (_%g191714191824%_
                                                            _%g191715191826%_)
                                                     (cons _%g191715191826%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%g191714191824%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192477192478%_
                                                   (lambda (_%g191722191776%_
                                                            _%g191723191778%_
                                                            _%g191724191779%_)
                                                     (cons _%g191724191779%_
                                                           (cons _%g191723191778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%g191722191776%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx192472192473%_))
                                                  (let ((_%e191716191804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx192472192473%_))))
                                                    (let ((_%tl191718191811%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191716191804%_)))
                                                          (_%hd191717191808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191716191804%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191718191811%_))
                                                          (let ((_%e191719191814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl191718191811%_))))
                    (let ((_%tl191721191821%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191719191814%_)))
                          (_%hd191720191818%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191719191814%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl191721191821%_))
                          (_%__kont192475192476%_
                           _%hd191720191818%_
                           _%hd191717191808%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191721191821%_))
                              (let ((_%e191731191766%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191721191821%_))))
                                (let ((_%tl191733191773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191731191766%_)))
                                      (_%hd191732191770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191731191766%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191733191773%_))
                                      (_%__kont192477192478%_
                                       _%hd191732191770%_
                                       _%hd191720191818%_
                                       _%hd191717191808%_)
                                      (_%g191712191739%_))))
                              (_%g191712191739%_)))))
                  (_%g191712191739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g191712191739%_))))))
                                       (__tmp192558
                                        (let ((__tmp192559
                                               (lambda (_%g191842191845%_
                                                        _%g191843191848%_)
                                                 (cons _%g191842191845%_
                                                       _%g191843191848%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp192559
                                           '()
                                           _%clause191546191604%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp192560 __tmp192558))))
                              (_%g191528191552%_ _%g191529191556%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop191541191585%_
                                                   _%target191538191579%_
                                                   '()))
                                                (_%g191528191552%_
                                                 _%g191529191556%_)))))
                                      (_%g191528191552%_ _%g191529191556%_))))
                              (_%g191528191552%_ _%g191529191556%_))))
                      (_%g191528191552%_ _%g191529191556%_)))))
          (_%g191527191851%_ _%stx191525%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj192522
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192522
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192522
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj192522
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 ':init! '13 '#f '#f))
        (let ((__tmp192561 |gxc[1]#_g192562_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 __tmp192561 '4 '#f '#f))
        (let ((__tmp192563 |gxc[1]#_g192564_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 __tmp192563 '14 '#f '#f))
        (let ((__tmp192565 |gxc[1]#_g192566_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 __tmp192565 '15 '#f '#f))
        (let ((__tmp192567
               (cons (cons 'gensyms |gxc[1]#_g192568_|)
                     (cons (cons 'bindings |gxc[1]#_g192569_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 __tmp192567 '16 '#f '#f))
        (let ((__tmp192570
               (cons (cons 'gensyms |gxc[1]#_g192571_|)
                     (cons (cons 'bindings |gxc[1]#_g192572_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 __tmp192570 '17 '#f '#f))
        (let ((__tmp192573
               (cons (cons 'gensyms |gxc[1]#_g192574_|)
                     (cons (cons 'bindings |gxc[1]#_g192575_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 __tmp192573 '18 '#f '#f))
        (let ((__tmp192576
               (cons (cons 'gensyms |gxc[1]#_g192577_|)
                     (cons (cons 'bindings |gxc[1]#_g192578_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 __tmp192576 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj192522 '() '21 '#f '#f))
        __obj192522))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx191857%_)
        (let* ((_%g191861191875%_
                (lambda (_%g191862191871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191862191871%_))))
               (_%g191860191916%_
                (lambda (_%g191862191879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191862191879%_))
                      (let ((_%e191864191882%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g191862191879%_))))
                        (let ((_%hd191865191886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191864191882%_)))
                              (_%tl191866191889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191864191882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191866191889%_))
                              (let ((_%e191867191892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191866191889%_))))
                                (let ((_%hd191868191896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191867191892%_)))
                                      (_%tl191869191899%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191867191892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191869191899%_))
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
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'lambda))
                      (cons '() (cons _%hd191868191896%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g191861191875%_ _%g191862191879%_))))
                              (_%g191861191875%_ _%g191862191879%_))))
                      (_%g191861191875%_ _%g191862191879%_)))))
          (_%g191860191916%_ _%$stx191857%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx191920%_)
        (let* ((_%g191924191938%_
                (lambda (_%g191925191934%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g191925191934%_))))
               (_%g191923191979%_
                (lambda (_%g191925191942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g191925191942%_))
                      (let ((_%e191927191945%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g191925191942%_))))
                        (let ((_%hd191928191949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191927191945%_)))
                              (_%tl191929191952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191927191945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl191929191952%_))
                              (let ((_%e191930191955%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl191929191952%_))))
                                (let ((_%hd191931191959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191930191955%_)))
                                      (_%tl191932191962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191930191955%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl191932191962%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%hd191931191959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%g191924191938%_ _%g191925191942%_))))
                              (_%g191924191938%_ _%g191925191942%_))))
                      (_%g191924191938%_ _%g191925191942%_)))))
          (_%g191923191979%_ _%$stx191920%_))))))
