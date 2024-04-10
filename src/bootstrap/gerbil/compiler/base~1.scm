(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g131307_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g131309_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g131311_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g131313_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g131314_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g131316_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g131317_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g131319_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g131320_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g131322_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g131323_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx130390%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx130390%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx130393%_)
        (let* ((_%g130396130420%_
                (lambda (_%g130397130416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130397130416%_))))
               (_%g130395130723%_
                (lambda (_%g130397130424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130397130424%_))
                      (let ((_%e130400130427%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130397130424%_))))
                        (let ((_%hd130401130431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130400130427%_)))
                              (_%tl130402130434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130400130427%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130402130434%_))
                              (let ((_%e130403130437%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130402130434%_))))
                                (let ((_%hd130404130441%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130403130437%_)))
                                      (_%tl130405130444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130403130437%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl130405130444%_))
                                      (let ((_g131298_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl130405130444%_
                                                '0))))
                                        (begin
                                          (let ((_g131299_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g131298_)
                                                       (##vector-length
                                                        _g131298_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g131299_ 2)))
                                                (error "Context expects 2 values"
                                                       _g131299_)))
                                          (let ((_%target130406130447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g131298_ 0)))
                                                (_%tl130408130450%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g131298_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl130408130450%_))
                                                (letrec ((_%loop130409130453%_
                                                          (lambda (_%hd130407130457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause130413130460%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd130407130457%_))
                        (let ((_%e130410130463%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd130407130457%_))))
                          (let ((_%lp-hd130411130467%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e130410130463%_)))
                                (_%lp-tl130412130470%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e130410130463%_))))
                            (_%loop130409130453%_
                             _%lp-tl130412130470%_
                             (cons _%lp-hd130411130467%_
                                   _%clause130413130460%_))))
                        (let ((_%clause130414130473%_
                               (reverse _%clause130413130460%_)))
                          ((lambda (_%L130477%_ _%L130479%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _%L130479%_))
                                 (let* ((_%g130498130515%_
                                         (lambda (_%g130499130511%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g130499130511%_))))
                                        (_%g130497130576%_
                                         (lambda (_%g130499130519%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g130499130519%_))
                                               (let ((_g131300_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g130499130519%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g131301_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g131300_)
                        (##vector-length _g131300_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g131301_ 2)))
                 (error "Context expects 2 values" _g131301_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target130501130522%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g131300_
                                                             0)))
                                                         (_%tl130503130525%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g131300_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl130503130525%_))
                                                         (letrec ((_%loop130504130528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd130502130532%_ _%clause130508130535%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd130502130532%_))
                                 (let ((_%e130505130538%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd130502130532%_))))
                                   (let ((_%lp-hd130506130542%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130505130538%_)))
                                         (_%lp-tl130507130545%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130505130538%_))))
                                     (_%loop130504130528%_
                                      _%lp-tl130507130545%_
                                      (cons _%lp-hd130506130542%_
                                            _%clause130508130535%_))))
                                 (let ((_%clause130509130548%_
                                        (reverse _%clause130508130535%_)))
                                   ((lambda (_%L130552%_)
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
                            (cons _%L130479%_
                                  (let ((__tmp131302
                                         (lambda (_%g130567130570%_
                                                  _%g130568130573%_)
                                           (cons _%g130567130570%_
                                                 _%g130568130573%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp131302 '() _%L130552%_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause130509130548%_))))))
                   (_%loop130504130528%_ _%target130501130522%_ '()))
                 (_%g130498130515%_ _%g130499130519%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g130498130515%_
                                                _%g130499130519%_)))))
                                   (_%g130497130576%_
                                    (let ((__tmp131305
                                           (lambda (_%clause130580%_)
                                             (let* ((_%__stx131218131219%_
                                                     _%clause130580%_)
                                                    (_%g130584130611%_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%__stx131218131219%_)))))
                                               (let ((_%__kont131221131222%_
                                                      (lambda (_%L130696%_
                                                               _%L130698%_)
                                                        (cons _%L130698%_
                                                              (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax))
                                  (cons _%L130696%_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont131223131224%_
                                                      (lambda (_%L130648%_
                                                               _%L130650%_
                                                               _%L130651%_)
                                                        (cons _%L130651%_
                                                              (cons _%L130650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'syntax))
                                        (cons _%L130648%_ '()))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%__stx131218131219%_))
                                                     (let ((_%e130588130676%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%__stx131218131219%_))))
                                                       (let ((_%tl130590130683%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e130588130676%_)))
                     (_%hd130589130680%_
                      (let () (declare (not safe)) (##car _%e130588130676%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl130590130683%_))
                     (let ((_%e130591130686%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl130590130683%_))))
                       (let ((_%tl130593130693%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e130591130686%_)))
                             (_%hd130592130690%_
                              (let ()
                                (declare (not safe))
                                (##car _%e130591130686%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl130593130693%_))
                             (_%__kont131221131222%_
                              _%hd130592130690%_
                              _%hd130589130680%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl130593130693%_))
                                 (let ((_%e130603130638%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl130593130693%_))))
                                   (let ((_%tl130605130645%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e130603130638%_)))
                                         (_%hd130604130642%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e130603130638%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl130605130645%_))
                                         (_%__kont131223131224%_
                                          _%hd130604130642%_
                                          _%hd130592130690%_
                                          _%hd130589130680%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g130584130611%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g130584130611%_))))))
                     (let () (declare (not safe)) (_%g130584130611%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g130584130611%_)))))))
                                          (__tmp131303
                                           (let ((__tmp131304
                                                  (lambda (_%g130714130717%_
                                                           _%g130715130720%_)
                                                    (cons _%g130714130717%_
                                                          _%g130715130720%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp131304
                                              '()
                                              _%L130477%_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp131305 __tmp131303))))
                                 (_%g130396130420%_ _%g130397130424%_)))
                           _%clause130414130473%_
                           _%hd130404130441%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop130409130453%_
                                                   _%target130406130447%_
                                                   '()))
                                                (_%g130396130420%_
                                                 _%g130397130424%_)))))
                                      (_%g130396130420%_ _%g130397130424%_))))
                              (_%g130396130420%_ _%g130397130424%_))))
                      (_%g130396130420%_ _%g130397130424%_)))))
          (_%g130395130723%_ _%stx130393%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj131268
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
           __obj131268
           'gxc#symbol-table::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 'symbol-table '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj131268
           '(gensyms bindings)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj131268
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 ':init! '11 '#f '#f))
        (let ((__tmp131306 |gxc[1]#_g131307_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 __tmp131306 '12 '#f '#f))
        (let ((__tmp131308 |gxc[1]#_g131309_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 __tmp131308 '13 '#f '#f))
        (let ((__tmp131310 |gxc[1]#_g131311_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 __tmp131310 '14 '#f '#f))
        (let ((__tmp131312
               (cons (cons 'gensyms |gxc[1]#_g131313_|)
                     (cons (cons 'bindings |gxc[1]#_g131314_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 __tmp131312 '15 '#f '#f))
        (let ((__tmp131315
               (cons (cons 'gensyms |gxc[1]#_g131316_|)
                     (cons (cons 'bindings |gxc[1]#_g131317_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 __tmp131315 '16 '#f '#f))
        (let ((__tmp131318
               (cons (cons 'gensyms |gxc[1]#_g131319_|)
                     (cons (cons 'bindings |gxc[1]#_g131320_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 __tmp131318 '17 '#f '#f))
        (let ((__tmp131321
               (cons (cons 'gensyms |gxc[1]#_g131322_|)
                     (cons (cons 'bindings |gxc[1]#_g131323_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 __tmp131321 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj131268 '() '20 '#f '#f))
        __obj131268))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx130730%_)
        (let* ((_%g130734130748%_
                (lambda (_%g130735130744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130735130744%_))))
               (_%g130733130789%_
                (lambda (_%g130735130752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130735130752%_))
                      (let ((_%e130737130755%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130735130752%_))))
                        (let ((_%hd130738130759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130737130755%_)))
                              (_%tl130739130762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130737130755%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130739130762%_))
                              (let ((_%e130740130765%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130739130762%_))))
                                (let ((_%hd130741130769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130740130765%_)))
                                      (_%tl130742130772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130740130765%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130742130772%_))
                                      ((lambda (_%L130775%_)
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
                         (cons '() (cons _%L130775%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd130741130769%_)
                                      (_%g130734130748%_ _%g130735130752%_))))
                              (_%g130734130748%_ _%g130735130752%_))))
                      (_%g130734130748%_ _%g130735130752%_)))))
          (_%g130733130789%_ _%$stx130730%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx130793%_)
        (let* ((_%g130797130811%_
                (lambda (_%g130798130807%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g130798130807%_))))
               (_%g130796130852%_
                (lambda (_%g130798130815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g130798130815%_))
                      (let ((_%e130800130818%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g130798130815%_))))
                        (let ((_%hd130801130822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e130800130818%_)))
                              (_%tl130802130825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e130800130818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl130802130825%_))
                              (let ((_%e130803130828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl130802130825%_))))
                                (let ((_%hd130804130832%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e130803130828%_)))
                                      (_%tl130805130835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e130803130828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl130805130835%_))
                                      ((lambda (_%L130838%_)
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
                         (cons _%L130838%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd130804130832%_)
                                      (_%g130797130811%_ _%g130798130815%_))))
                              (_%g130797130811%_ _%g130798130815%_))))
                      (_%g130797130811%_ _%g130798130815%_)))))
          (_%g130796130852%_ _%$stx130793%_))))))
