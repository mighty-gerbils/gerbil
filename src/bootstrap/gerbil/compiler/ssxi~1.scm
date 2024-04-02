(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g201029_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201043_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201045_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201047_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201049_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201062_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201064_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201066_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201068_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx194585%_)
        (let* ((_%g194589194607%_
                (lambda (_%g194590194603%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194590194603%_))))
               (_%g194588194662%_
                (lambda (_%g194590194611%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194590194611%_))
                      (let ((_%e194595194614%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194590194611%_))))
                        (let ((_%hd194594194618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194595194614%_)))
                              (_%tl194593194621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194595194614%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194593194621%_))
                              (let ((_%e194598194624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl194593194621%_))))
                                (let ((_%hd194597194628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194598194624%_)))
                                      (_%tl194596194631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194598194624%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194596194631%_))
                                      (let ((_%e194601194634%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl194596194631%_))))
                                        (let ((_%hd194600194638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194601194634%_)))
                                              (_%tl194599194641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194601194634%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194599194641%_))
                                              ((lambda (_%L194644%_
                                                        _%L194646%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L194646%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L194646%_ '()))
                         (cons _%L194644%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194589194607%_
                                                      _%g194590194611%_)))
                                               _%hd194600194638%_
                                               _%hd194597194628%_)
                                              (_%g194589194607%_
                                               _%g194590194611%_))))
                                      (_%g194589194607%_ _%g194590194611%_))))
                              (_%g194589194607%_ _%g194590194611%_))))
                      (_%g194589194607%_ _%g194590194611%_)))))
          (_%g194588194662%_ _%$stx194585%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx194666%_)
        (let* ((_%g194670194688%_
                (lambda (_%g194671194684%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194671194684%_))))
               (_%g194669194743%_
                (lambda (_%g194671194692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194671194692%_))
                      (let ((_%e194676194695%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194671194692%_))))
                        (let ((_%hd194675194699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194676194695%_)))
                              (_%tl194674194702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194676194695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194674194702%_))
                              (let ((_%e194679194705%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl194674194702%_))))
                                (let ((_%hd194678194709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194679194705%_)))
                                      (_%tl194677194712%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194679194705%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194677194712%_))
                                      (let ((_%e194682194715%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl194677194712%_))))
                                        (let ((_%hd194681194719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194682194715%_)))
                                              (_%tl194680194722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194682194715%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194680194722%_))
                                              ((lambda (_%L194725%_
                                                        _%L194727%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L194727%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L194727%_ '()))
                         (cons _%L194725%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194670194688%_
                                                      _%g194671194692%_)))
                                               _%hd194681194719%_
                                               _%hd194678194709%_)
                                              (_%g194670194688%_
                                               _%g194671194692%_))))
                                      (_%g194670194688%_ _%g194671194692%_))))
                              (_%g194670194688%_ _%g194671194692%_))))
                      (_%g194670194688%_ _%g194671194692%_)))))
          (_%g194669194743%_ _%$stx194666%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx194747%_)
        (let* ((_%g194751194780%_
                (lambda (_%g194752194776%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194752194776%_))))
               (_%g194750194880%_
                (lambda (_%g194752194784%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194752194784%_))
                      (let ((_%e194757194787%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194752194784%_))))
                        (let ((_%hd194756194791%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194757194787%_)))
                              (_%tl194755194794%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194757194787%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194755194794%_))
                              (let ((_g201007_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194755194794%_
                                        '0))))
                                (begin
                                  (let ((_g201008_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201007_)
                                               (##vector-length _g201007_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201008_ 2)))
                                        (error "Context expects 2 values"
                                               _g201008_)))
                                  (let ((_%target194758194797%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201007_ 0)))
                                        (_%tl194760194800%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201007_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194760194800%_))
                                        (letrec ((_%loop194761194803%_
                                                  (lambda (_%hd194759194807%_
                                                           _%type194765194810%_
                                                           _%symbol194766194812%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194759194807%_))
                                                        (let ((_%e194762194815%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd194759194807%_))))
                  (let ((_%lp-hd194763194819%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194762194815%_)))
                        (_%lp-tl194764194822%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194762194815%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd194763194819%_))
                        (let ((_%e194771194825%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd194763194819%_))))
                          (let ((_%hd194770194829%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194771194825%_)))
                                (_%tl194769194832%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194771194825%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194769194832%_))
                                (let ((_%e194774194835%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl194769194832%_))))
                                  (let ((_%hd194773194839%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194774194835%_)))
                                        (_%tl194772194842%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194774194835%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194772194842%_))
                                        (_%loop194761194803%_
                                         _%lp-tl194764194822%_
                                         (cons _%hd194773194839%_
                                               _%type194765194810%_)
                                         (cons _%hd194770194829%_
                                               _%symbol194766194812%_))
                                        (_%g194751194780%_
                                         _%g194752194784%_))))
                                (_%g194751194780%_ _%g194752194784%_))))
                        (_%g194751194780%_ _%g194752194784%_))))
                (let ((_%type194767194845%_ (reverse _%type194765194810%_))
                      (_%symbol194768194848%_
                       (reverse _%symbol194766194812%_)))
                  ((lambda (_%L194851%_ _%L194853%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L194851%_
                                _%L194853%_))
                             (let ((__tmp201009
                                    (lambda (_%g194868194872%_
                                             _%g194869194875%_
                                             _%g194870194877%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g194869194875%_
                                                        (cons _%g194868194872%_
                                                              '())))
                                            _%g194870194877%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201009
                                '()
                                _%L194851%_
                                _%L194853%_)))))
                   _%type194767194845%_
                   _%symbol194768194848%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194761194803%_
                                           _%target194758194797%_
                                           '()
                                           '()))
                                        (_%g194751194780%_
                                         _%g194752194784%_)))))
                              (_%g194751194780%_ _%g194752194784%_))))
                      (_%g194751194780%_ _%g194752194784%_)))))
          (_%g194750194880%_ _%$stx194747%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx194885%_)
        (let* ((_%__stx200318200319%_ _%$stx194885%_)
               (_%g194890194932%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200318200319%_)))))
          (let ((_%__kont200321200322%_
                 (lambda (_%L195060%_ _%L195062%_ _%L195063%_ _%L195064%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195064%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195063%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195062%_ '()))
                                           (cons _%L195060%_ '())))))))
                (_%__kont200323200324%_
                 (lambda (_%L194979%_ _%L194981%_ _%L194982%_ _%L194983%_)
                   (cons _%L194983%_
                         (cons _%L194982%_
                               (cons _%L194981%_
                                     (cons _%L194979%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match200357200358%_
                   (lambda (_%e194898195010%_
                            _%hd194897195014%_
                            _%tl194896195017%_
                            _%e194901195020%_
                            _%hd194900195024%_
                            _%tl194899195027%_
                            _%e194904195030%_
                            _%hd194903195034%_
                            _%tl194902195037%_
                            _%e194907195040%_
                            _%hd194906195044%_
                            _%tl194905195047%_
                            _%e194910195050%_
                            _%hd194909195054%_
                            _%tl194908195057%_)
                     (let ((_%L195060%_ _%hd194909195054%_)
                           (_%L195062%_ _%hd194906195044%_)
                           (_%L195063%_ _%hd194903195034%_)
                           (_%L195064%_ _%hd194900195024%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195064%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195063%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195062%_)))
                           (_%__kont200321200322%_
                            _%L195060%_
                            _%L195062%_
                            _%L195063%_
                            _%L195064%_)
                           (let ()
                             (declare (not safe))
                             (_%g194890194932%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200318200319%_))
                  (let ((_%e194898195010%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200318200319%_))))
                    (let ((_%tl194896195017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194898195010%_)))
                          (_%hd194897195014%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194898195010%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194896195017%_))
                          (let ((_%e194901195020%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl194896195017%_))))
                            (let ((_%tl194899195027%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194901195020%_)))
                                  (_%hd194900195024%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194901195020%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194899195027%_))
                                  (let ((_%e194904195030%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl194899195027%_))))
                                    (let ((_%tl194902195037%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194904195030%_)))
                                          (_%hd194903195034%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194904195030%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl194902195037%_))
                                          (let ((_%e194907195040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl194902195037%_))))
                                            (let ((_%tl194905195047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e194907195040%_)))
                                                  (_%hd194906195044%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e194907195040%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194905195047%_))
                                                  (let ((_%e194910195050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl194905195047%_))))
                                                    (let ((_%tl194908195057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194910195050%_)))
                                                          (_%hd194909195054%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194910195050%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194908195057%_))
                                                          (_%__match200357200358%_
                                                           _%e194898195010%_
                                                           _%hd194897195014%_
                                                           _%tl194896195017%_
                                                           _%e194901195020%_
                                                           _%hd194900195024%_
                                                           _%tl194899195027%_
                                                           _%e194904195030%_
                                                           _%hd194903195034%_
                                                           _%tl194902195037%_
                                                           _%e194907195040%_
                                                           _%hd194906195044%_
                                                           _%tl194905195047%_
                                                           _%e194910195050%_
                                                           _%hd194909195054%_
                                                           _%tl194908195057%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194890194932%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194905195047%_))
                                                      (_%__kont200323200324%_
                                                       _%hd194906195044%_
                                                       _%hd194903195034%_
                                                       _%hd194900195024%_
                                                       _%hd194897195014%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194890194932%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g194890194932%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g194890194932%_)))))
                          (let () (declare (not safe)) (_%g194890194932%_)))))
                  (let () (declare (not safe)) (_%g194890194932%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195089%_)
        (let* ((_%g195093195128%_
                (lambda (_%g195094195124%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195094195124%_))))
               (_%g195092195247%_
                (lambda (_%g195094195132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195094195132%_))
                      (let ((_%e195100195135%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195094195132%_))))
                        (let ((_%hd195099195139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195100195135%_)))
                              (_%tl195098195142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195100195135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195098195142%_))
                              (let ((_g201010_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195098195142%_
                                        '0))))
                                (begin
                                  (let ((_g201011_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201010_)
                                               (##vector-length _g201010_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201011_ 2)))
                                        (error "Context expects 2 values"
                                               _g201011_)))
                                  (let ((_%target195101195145%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201010_ 0)))
                                        (_%tl195103195148%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201010_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195103195148%_))
                                        (letrec ((_%loop195104195151%_
                                                  (lambda (_%hd195102195155%_
                                                           _%symbol195108195158%_
                                                           _%method195109195160%_
                                                           _%type-t195110195162%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195102195155%_))
                                                        (let ((_%e195105195165%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195102195155%_))))
                  (let ((_%lp-hd195106195169%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195105195165%_)))
                        (_%lp-tl195107195172%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195105195165%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195106195169%_))
                        (let ((_%e195116195175%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195106195169%_))))
                          (let ((_%hd195115195179%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195116195175%_)))
                                (_%tl195114195182%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195116195175%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195114195182%_))
                                (let ((_%e195119195185%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195114195182%_))))
                                  (let ((_%hd195118195189%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195119195185%_)))
                                        (_%tl195117195192%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195119195185%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195117195192%_))
                                        (let ((_%e195122195195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195117195192%_))))
                                          (let ((_%hd195121195199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195122195195%_)))
                                                (_%tl195120195202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195122195195%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195120195202%_))
                                                (_%loop195104195151%_
                                                 _%lp-tl195107195172%_
                                                 (cons _%hd195121195199%_
                                                       _%symbol195108195158%_)
                                                 (cons _%hd195118195189%_
                                                       _%method195109195160%_)
                                                 (cons _%hd195115195179%_
                                                       _%type-t195110195162%_))
                                                (_%g195093195128%_
                                                 _%g195094195132%_))))
                                        (_%g195093195128%_
                                         _%g195094195132%_))))
                                (_%g195093195128%_ _%g195094195132%_))))
                        (_%g195093195128%_ _%g195094195132%_))))
                (let ((_%symbol195111195205%_ (reverse _%symbol195108195158%_))
                      (_%method195112195208%_ (reverse _%method195109195160%_))
                      (_%type-t195113195210%_
                       (reverse _%type-t195110195162%_)))
                  ((lambda (_%L195213%_ _%L195215%_ _%L195216%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195213%_
                                _%L195215%_
                                _%L195216%_))
                             (let ((__tmp201012
                                    (lambda (_%g195232195237%_
                                             _%g195233195240%_
                                             _%g195234195242%_
                                             _%g195235195244%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g195234195242%_
                                                        (cons _%g195233195240%_
                                                              (cons _%g195232195237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g195235195244%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201012
                                '()
                                _%L195213%_
                                _%L195215%_
                                _%L195216%_)))))
                   _%symbol195111195205%_
                   _%method195112195208%_
                   _%type-t195113195210%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195104195151%_
                                           _%target195101195145%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195093195128%_
                                         _%g195094195132%_)))))
                              (_%g195093195128%_ _%g195094195132%_))))
                      (_%g195093195128%_ _%g195094195132%_)))))
          (_%g195092195247%_ _%$stx195089%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx195252%_)
        (let* ((_%g195256195289%_
                (lambda (_%g195257195285%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195257195285%_))))
               (_%g195255195403%_
                (lambda (_%g195257195293%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195257195293%_))
                      (let ((_%e195263195296%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195257195293%_))))
                        (let ((_%hd195262195300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195263195296%_)))
                              (_%tl195261195303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195263195296%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195261195303%_))
                              (let ((_%e195266195306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195261195303%_))))
                                (let ((_%hd195265195310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195266195306%_)))
                                      (_%tl195264195313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195266195306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195264195313%_))
                                      (let ((_g201013_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195264195313%_
                                                '0))))
                                        (begin
                                          (let ((_g201014_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201013_)
                                                       (##vector-length
                                                        _g201013_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201014_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201014_)))
                                          (let ((_%target195267195316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201013_ 0)))
                                                (_%tl195269195319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201013_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195269195319%_))
                                                (letrec ((_%loop195270195322%_
                                                          (lambda (_%hd195268195326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol195274195329%_
                           _%method195275195331%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195268195326%_))
                        (let ((_%e195271195334%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd195268195326%_))))
                          (let ((_%lp-hd195272195338%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195271195334%_)))
                                (_%lp-tl195273195341%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195271195334%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195272195338%_))
                                (let ((_%e195280195344%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd195272195338%_))))
                                  (let ((_%hd195279195348%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195280195344%_)))
                                        (_%tl195278195351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195280195344%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195278195351%_))
                                        (let ((_%e195283195354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195278195351%_))))
                                          (let ((_%hd195282195358%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195283195354%_)))
                                                (_%tl195281195361%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195283195354%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195281195361%_))
                                                (_%loop195270195322%_
                                                 _%lp-tl195273195341%_
                                                 (cons _%hd195282195358%_
                                                       _%symbol195274195329%_)
                                                 (cons _%hd195279195348%_
                                                       _%method195275195331%_))
                                                (_%g195256195289%_
                                                 _%g195257195293%_))))
                                        (_%g195256195289%_
                                         _%g195257195293%_))))
                                (_%g195256195289%_ _%g195257195293%_))))
                        (let ((_%symbol195276195364%_
                               (reverse _%symbol195274195329%_))
                              (_%method195277195367%_
                               (reverse _%method195275195331%_)))
                          ((lambda (_%L195370%_ _%L195372%_ _%L195373%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L195370%_
                                        _%L195372%_))
                                     (let ((__tmp201015
                                            (lambda (_%g195391195395%_
                                                     _%g195392195398%_
                                                     _%g195393195400%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L195373%_
                                                                (cons _%g195392195398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g195391195395%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g195393195400%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201015
                                        '()
                                        _%L195370%_
                                        _%L195372%_)))))
                           _%symbol195276195364%_
                           _%method195277195367%_
                           _%hd195265195310%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195270195322%_
                                                   _%target195267195316%_
                                                   '()
                                                   '()))
                                                (_%g195256195289%_
                                                 _%g195257195293%_)))))
                                      (_%g195256195289%_ _%g195257195293%_))))
                              (_%g195256195289%_ _%g195257195293%_))))
                      (_%g195256195289%_ _%g195257195293%_)))))
          (_%g195255195403%_ _%$stx195252%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx195408%_)
        (let* ((_%g195412195426%_
                (lambda (_%g195413195422%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195413195422%_))))
               (_%g195411195467%_
                (lambda (_%g195413195430%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195413195430%_))
                      (let ((_%e195417195433%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195413195430%_))))
                        (let ((_%hd195416195437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195417195433%_)))
                              (_%tl195415195440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195417195433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195415195440%_))
                              (let ((_%e195420195443%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195415195440%_))))
                                (let ((_%hd195419195447%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195420195443%_)))
                                      (_%tl195418195450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195420195443%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195418195450%_))
                                      ((lambda (_%L195453%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L195453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195419195447%_)
                                      (_%g195412195426%_ _%g195413195430%_))))
                              (_%g195412195426%_ _%g195413195430%_))))
                      (_%g195412195426%_ _%g195413195430%_)))))
          (_%g195411195467%_ _%$stx195408%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx195471%_)
        (let* ((_%g195475195529%_
                (lambda (_%g195476195525%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195476195525%_))))
               (_%g195474195710%_
                (lambda (_%g195476195533%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195476195533%_))
                      (let ((_%e195490195536%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195476195533%_))))
                        (let ((_%hd195489195540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195490195536%_)))
                              (_%tl195488195543%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195490195536%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195488195543%_))
                              (let ((_%e195493195546%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195488195543%_))))
                                (let ((_%hd195492195550%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195493195546%_)))
                                      (_%tl195491195553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195493195546%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195491195553%_))
                                      (let ((_%e195496195556%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195491195553%_))))
                                        (let ((_%hd195495195560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195496195556%_)))
                                              (_%tl195494195563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195496195556%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195494195563%_))
                                              (let ((_%e195499195566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195494195563%_))))
                                                (let ((_%hd195498195570%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195499195566%_)))
                                                      (_%tl195497195573%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195499195566%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195497195573%_))
                                                      (let ((_%e195502195576%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl195497195573%_))))
                (let ((_%hd195501195580%_
                       (let () (declare (not safe)) (##car _%e195502195576%_)))
                      (_%tl195500195583%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195502195576%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl195500195583%_))
                      (let ((_%e195505195586%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl195500195583%_))))
                        (let ((_%hd195504195590%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195505195586%_)))
                              (_%tl195503195593%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195505195586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195503195593%_))
                              (let ((_%e195508195596%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195503195593%_))))
                                (let ((_%hd195507195600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195508195596%_)))
                                      (_%tl195506195603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195508195596%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195506195603%_))
                                      (let ((_%e195511195606%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195506195603%_))))
                                        (let ((_%hd195510195610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195511195606%_)))
                                              (_%tl195509195613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195511195606%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195509195613%_))
                                              (let ((_%e195514195616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195509195613%_))))
                                                (let ((_%hd195513195620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195514195616%_)))
                                                      (_%tl195512195623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195514195616%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195512195623%_))
                                                      (let ((_%e195517195626%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl195512195623%_))))
                (let ((_%hd195516195630%_
                       (let () (declare (not safe)) (##car _%e195517195626%_)))
                      (_%tl195515195633%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195517195626%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl195515195633%_))
                      (let ((_%e195520195636%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl195515195633%_))))
                        (let ((_%hd195519195640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195520195636%_)))
                              (_%tl195518195643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195520195636%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195518195643%_))
                              (let ((_%e195523195646%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195518195643%_))))
                                (let ((_%hd195522195650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195523195646%_)))
                                      (_%tl195521195653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195523195646%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195521195653%_))
                                      ((lambda (_%L195656%_
                                                _%L195658%_
                                                _%L195659%_
                                                _%L195660%_
                                                _%L195661%_
                                                _%L195662%_
                                                _%L195663%_
                                                _%L195664%_
                                                _%L195665%_
                                                _%L195666%_
                                                _%L195667%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L195667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L195666%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L195665%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195664%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195663%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195662%_ '()))
                                           (cons _%L195661%_
                                                 (cons _%L195660%_
                                                       (cons _%L195659%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L195658%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L195656%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195522195650%_
                                       _%hd195519195640%_
                                       _%hd195516195630%_
                                       _%hd195513195620%_
                                       _%hd195510195610%_
                                       _%hd195507195600%_
                                       _%hd195504195590%_
                                       _%hd195501195580%_
                                       _%hd195498195570%_
                                       _%hd195495195560%_
                                       _%hd195492195550%_)
                                      (_%g195475195529%_ _%g195476195533%_))))
                              (_%g195475195529%_ _%g195476195533%_))))
                      (_%g195475195529%_ _%g195476195533%_))))
              (_%g195475195529%_ _%g195476195533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195475195529%_
                                               _%g195476195533%_))))
                                      (_%g195475195529%_ _%g195476195533%_))))
                              (_%g195475195529%_ _%g195476195533%_))))
                      (_%g195475195529%_ _%g195476195533%_))))
              (_%g195475195529%_ _%g195476195533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195475195529%_
                                               _%g195476195533%_))))
                                      (_%g195475195529%_ _%g195476195533%_))))
                              (_%g195475195529%_ _%g195476195533%_))))
                      (_%g195475195529%_ _%g195476195533%_)))))
          (_%g195474195710%_ _%$stx195471%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx195714%_)
        (let* ((_%g195718195732%_
                (lambda (_%g195719195728%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195719195728%_))))
               (_%g195717195773%_
                (lambda (_%g195719195736%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195719195736%_))
                      (let ((_%e195723195739%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195719195736%_))))
                        (let ((_%hd195722195743%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195723195739%_)))
                              (_%tl195721195746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195723195739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195721195746%_))
                              (let ((_%e195726195749%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195721195746%_))))
                                (let ((_%hd195725195753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195726195749%_)))
                                      (_%tl195724195756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195726195749%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195724195756%_))
                                      ((lambda (_%L195759%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L195759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195725195753%_)
                                      (_%g195718195732%_ _%g195719195736%_))))
                              (_%g195718195732%_ _%g195719195736%_))))
                      (_%g195718195732%_ _%g195719195736%_)))))
          (_%g195717195773%_ _%$stx195714%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx195777%_)
        (let* ((_%g195781195795%_
                (lambda (_%g195782195791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195782195791%_))))
               (_%g195780195836%_
                (lambda (_%g195782195799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195782195799%_))
                      (let ((_%e195786195802%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195782195799%_))))
                        (let ((_%hd195785195806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195786195802%_)))
                              (_%tl195784195809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195786195802%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195784195809%_))
                              (let ((_%e195789195812%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195784195809%_))))
                                (let ((_%hd195788195816%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195789195812%_)))
                                      (_%tl195787195819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195789195812%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195787195819%_))
                                      ((lambda (_%L195822%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L195822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195788195816%_)
                                      (_%g195781195795%_ _%g195782195799%_))))
                              (_%g195781195795%_ _%g195782195799%_))))
                      (_%g195781195795%_ _%g195782195799%_)))))
          (_%g195780195836%_ _%$stx195777%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx195840%_)
        (let* ((_%g195844195866%_
                (lambda (_%g195845195862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195845195862%_))))
               (_%g195843195935%_
                (lambda (_%g195845195870%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195845195870%_))
                      (let ((_%e195851195873%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195845195870%_))))
                        (let ((_%hd195850195877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195851195873%_)))
                              (_%tl195849195880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195851195873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195849195880%_))
                              (let ((_%e195854195883%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195849195880%_))))
                                (let ((_%hd195853195887%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195854195883%_)))
                                      (_%tl195852195890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195854195883%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195852195890%_))
                                      (let ((_%e195857195893%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195852195890%_))))
                                        (let ((_%hd195856195897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195857195893%_)))
                                              (_%tl195855195900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195857195893%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195855195900%_))
                                              (let ((_%e195860195903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195855195900%_))))
                                                (let ((_%hd195859195907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195860195903%_)))
                                                      (_%tl195858195910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195860195903%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195858195910%_))
                                                      ((lambda (_%L195913%_
                                                                _%L195915%_
                                                                _%L195916%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L195916%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L195915%_ '()))
                                   (cons _%L195913%_ '())))))
               _%hd195859195907%_
               _%hd195856195897%_
               _%hd195853195887%_)
              (_%g195844195866%_ _%g195845195870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195844195866%_
                                               _%g195845195870%_))))
                                      (_%g195844195866%_ _%g195845195870%_))))
                              (_%g195844195866%_ _%g195845195870%_))))
                      (_%g195844195866%_ _%g195845195870%_)))))
          (_%g195843195935%_ _%$stx195840%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx195939%_)
        (let* ((_%g195943195965%_
                (lambda (_%g195944195961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195944195961%_))))
               (_%g195942196034%_
                (lambda (_%g195944195969%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195944195969%_))
                      (let ((_%e195950195972%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195944195969%_))))
                        (let ((_%hd195949195976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195950195972%_)))
                              (_%tl195948195979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195950195972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195948195979%_))
                              (let ((_%e195953195982%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195948195979%_))))
                                (let ((_%hd195952195986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195953195982%_)))
                                      (_%tl195951195989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195953195982%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195951195989%_))
                                      (let ((_%e195956195992%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195951195989%_))))
                                        (let ((_%hd195955195996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195956195992%_)))
                                              (_%tl195954195999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195956195992%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195954195999%_))
                                              (let ((_%e195959196002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195954195999%_))))
                                                (let ((_%hd195958196006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195959196002%_)))
                                                      (_%tl195957196009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195959196002%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195957196009%_))
                                                      ((lambda (_%L196012%_
                                                                _%L196014%_
                                                                _%L196015%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196015%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196014%_ '()))
                                   (cons _%L196012%_ '())))))
               _%hd195958196006%_
               _%hd195955195996%_
               _%hd195952195986%_)
              (_%g195943195965%_ _%g195944195969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195943195965%_
                                               _%g195944195969%_))))
                                      (_%g195943195965%_ _%g195944195969%_))))
                              (_%g195943195965%_ _%g195944195969%_))))
                      (_%g195943195965%_ _%g195944195969%_)))))
          (_%g195942196034%_ _%$stx195939%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196038%_)
        (let* ((_%g196042196056%_
                (lambda (_%g196043196052%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196043196052%_))))
               (_%g196041196097%_
                (lambda (_%g196043196060%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196043196060%_))
                      (let ((_%e196047196063%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196043196060%_))))
                        (let ((_%hd196046196067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196047196063%_)))
                              (_%tl196045196070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196047196063%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196045196070%_))
                              (let ((_%e196050196073%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196045196070%_))))
                                (let ((_%hd196049196077%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196050196073%_)))
                                      (_%tl196048196080%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196050196073%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196048196080%_))
                                      ((lambda (_%L196083%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196049196077%_)
                                      (_%g196042196056%_ _%g196043196060%_))))
                              (_%g196042196056%_ _%g196043196060%_))))
                      (_%g196042196056%_ _%g196043196060%_)))))
          (_%g196041196097%_ _%$stx196038%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196101%_)
        (let* ((_%g196105196123%_
                (lambda (_%g196106196119%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196106196119%_))))
               (_%g196104196178%_
                (lambda (_%g196106196127%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196106196127%_))
                      (let ((_%e196111196130%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196106196127%_))))
                        (let ((_%hd196110196134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196111196130%_)))
                              (_%tl196109196137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196111196130%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196109196137%_))
                              (let ((_%e196114196140%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196109196137%_))))
                                (let ((_%hd196113196144%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196114196140%_)))
                                      (_%tl196112196147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196114196140%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196112196147%_))
                                      (let ((_%e196117196150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196112196147%_))))
                                        (let ((_%hd196116196154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196117196150%_)))
                                              (_%tl196115196157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196117196150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196115196157%_))
                                              ((lambda (_%L196160%_
                                                        _%L196162%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196162%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196160%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196116196154%_
                                               _%hd196113196144%_)
                                              (_%g196105196123%_
                                               _%g196106196127%_))))
                                      (_%g196105196123%_ _%g196106196127%_))))
                              (_%g196105196123%_ _%g196106196127%_))))
                      (_%g196105196123%_ _%g196106196127%_)))))
          (_%g196104196178%_ _%$stx196101%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx196182%_)
        (let* ((_%__stx200386200387%_ _%$stx196182%_)
               (_%g196189196250%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200386200387%_)))))
          (let ((_%__kont200389200390%_
                 (lambda (_%L196488%_ _%L196490%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196490%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196488%_ '()))
                                     '())))))
                (_%__kont200391200392%_
                 (lambda (_%L196427%_ _%L196429%_ _%L196430%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196430%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196429%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196427%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont200393200394%_
                 (lambda (_%L196351%_ _%L196353%_)
                   (cons _%L196353%_ (cons _%L196351%_ (cons '#f '())))))
                (_%__kont200395200396%_
                 (lambda (_%L196301%_ _%L196303%_ _%L196304%_)
                   (cons _%L196304%_
                         (cons _%L196303%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L196301%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200386200387%_))
                (let ((_%e196195196458%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200386200387%_))))
                  (let ((_%tl196193196465%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196195196458%_)))
                        (_%hd196194196462%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196195196458%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196193196465%_))
                        (let ((_%e196198196468%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl196193196465%_))))
                          (let ((_%tl196196196475%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196198196468%_)))
                                (_%hd196197196472%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196198196468%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196196196475%_))
                                (let ((_%e196201196478%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196196196475%_))))
                                  (let ((_%tl196199196485%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196201196478%_)))
                                        (_%hd196200196482%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196201196478%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196199196485%_))
                                        (_%__kont200389200390%_
                                         _%hd196200196482%_
                                         _%hd196197196472%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196199196485%_))
                                            (let ((_%e196216196403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl196199196485%_))))
                                              (let ((_%tl196214196410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196216196403%_)))
                                                    (_%hd196215196407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196216196403%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd196215196407%_))
                                                    (let ((_%e196217196413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd196215196407%_))))
                                                      (if (equal? _%e196217196413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196214196410%_))
                      (let ((_%e196220196417%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196214196410%_))))
                        (let ((_%tl196218196424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196220196417%_)))
                              (_%hd196219196421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196220196417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196218196424%_))
                              (_%__kont200391200392%_
                               _%hd196219196421%_
                               _%hd196200196482%_
                               _%hd196197196472%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd196200196482%_))
                                  (let ((_%e196241196287%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196200196482%_))))
                                    (declare (not safe))
                                    (_%g196189196250%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196189196250%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd196200196482%_))
                          (let ((_%e196241196287%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196200196482%_))))
                            (if (equal? _%e196241196287%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196214196410%_))
                                    (_%__kont200395200396%_
                                     _%hd196215196407%_
                                     _%hd196197196472%_
                                     _%hd196194196462%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196189196250%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g196189196250%_))))
                          (let () (declare (not safe)) (_%g196189196250%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd196200196482%_))
                      (let ((_%e196241196287%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd196200196482%_))))
                        (if (equal? _%e196241196287%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196214196410%_))
                                (_%__kont200395200396%_
                                 _%hd196215196407%_
                                 _%hd196197196472%_
                                 _%hd196194196462%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196189196250%_)))
                            (let () (declare (not safe)) (_%g196189196250%_))))
                      (let () (declare (not safe)) (_%g196189196250%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd196200196482%_))
                                                        (let ((_%e196241196287%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196200196482%_))))
                  (if (equal? _%e196241196287%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196214196410%_))
                          (_%__kont200395200396%_
                           _%hd196215196407%_
                           _%hd196197196472%_
                           _%hd196194196462%_)
                          (let () (declare (not safe)) (_%g196189196250%_)))
                      (let () (declare (not safe)) (_%g196189196250%_))))
                (let () (declare (not safe)) (_%g196189196250%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd196200196482%_))
                                                (let ((_%e196241196287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd196200196482%_))))
                                                  (declare (not safe))
                                                  (_%g196189196250%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196189196250%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196196196475%_))
                                    (_%__kont200393200394%_
                                     _%hd196197196472%_
                                     _%hd196194196462%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196189196250%_))))))
                        (let () (declare (not safe)) (_%g196189196250%_)))))
                (let () (declare (not safe)) (_%g196189196250%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx196509%_)
        (let* ((_%g196513196542%_
                (lambda (_%g196514196538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196514196538%_))))
               (_%g196512196651%_
                (lambda (_%g196514196546%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196514196546%_))
                      (let ((_%e196518196549%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196514196546%_))))
                        (let ((_%hd196517196553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196518196549%_)))
                              (_%tl196516196556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196518196549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196516196556%_))
                              (let ((_g201016_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196516196556%_
                                        '0))))
                                (begin
                                  (let ((_g201017_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201016_)
                                               (##vector-length _g201016_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201017_ 2)))
                                        (error "Context expects 2 values"
                                               _g201017_)))
                                  (let ((_%target196519196559%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201016_ 0)))
                                        (_%tl196521196562%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201016_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196521196562%_))
                                        (letrec ((_%loop196522196565%_
                                                  (lambda (_%hd196520196569%_
                                                           _%clause196526196572%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196520196569%_))
                                                        (let ((_%e196523196575%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196520196569%_))))
                  (let ((_%lp-hd196524196579%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196523196575%_)))
                        (_%lp-tl196525196582%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196523196575%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd196524196579%_))
                        (let ((_g201018_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd196524196579%_
                                  '0))))
                          (begin
                            (let ((_g201019_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201018_)
                                         (##vector-length _g201018_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201019_ 2)))
                                  (error "Context expects 2 values"
                                         _g201019_)))
                            (let ((_%target196528196585%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201018_ 0)))
                                  (_%tl196530196588%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201018_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196530196588%_))
                                  (letrec ((_%loop196531196591%_
                                            (lambda (_%hd196529196595%_
                                                     _%clause196535196598%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196529196595%_))
                                                  (let ((_%e196532196601%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd196529196595%_))))
                                                    (let ((_%lp-hd196533196605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196532196601%_)))
                                                          (_%lp-tl196534196608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196532196601%_))))
                                                      (_%loop196531196591%_
                                                       _%lp-tl196534196608%_
                                                       (cons _%lp-hd196533196605%_
                                                             _%clause196535196598%_))))
                                                  (let ((_%clause196536196611%_
                                                         (reverse _%clause196535196598%_)))
                                                    (_%loop196522196565%_
                                                     _%lp-tl196525196582%_
                                                     (cons _%clause196536196611%_
                                                           _%clause196526196572%_)))))))
                                    (_%loop196531196591%_
                                     _%target196528196585%_
                                     '()))
                                  (_%g196513196542%_ _%g196514196546%_)))))
                        (_%g196513196542%_ _%g196514196546%_))))
                (let ((_%clause196527196615%_
                       (reverse _%clause196526196572%_)))
                  ((lambda (_%L196619%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp201020
                                              (lambda (_%g196634196639%_
                                                       _%g196635196642%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp201021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g196636196645%_ _%g196637196648%_)
                             (cons _%g196636196645%_ _%g196637196648%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201021 '() _%g196634196639%_)))
              _%g196635196642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp201020
                                          '()
                                          _%L196619%_)))
                                 '())))
                   _%clause196527196615%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196522196565%_
                                           _%target196519196559%_
                                           '()))
                                        (_%g196513196542%_
                                         _%g196514196546%_)))))
                              (_%g196513196542%_ _%g196514196546%_))))
                      (_%g196513196542%_ _%g196514196546%_)))))
          (_%g196512196651%_ _%$stx196509%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx196657%_)
        (let* ((_%g196661196679%_
                (lambda (_%g196662196675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196662196675%_))))
               (_%g196660196734%_
                (lambda (_%g196662196683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196662196683%_))
                      (let ((_%e196667196686%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196662196683%_))))
                        (let ((_%hd196666196690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196667196686%_)))
                              (_%tl196665196693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196667196686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196665196693%_))
                              (let ((_%e196670196696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196665196693%_))))
                                (let ((_%hd196669196700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196670196696%_)))
                                      (_%tl196668196703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196670196696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196668196703%_))
                                      (let ((_%e196673196706%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196668196703%_))))
                                        (let ((_%hd196672196710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196673196706%_)))
                                              (_%tl196671196713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196673196706%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196671196713%_))
                                              ((lambda (_%L196716%_
                                                        _%L196718%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196718%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196716%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196672196710%_
                                               _%hd196669196700%_)
                                              (_%g196661196679%_
                                               _%g196662196683%_))))
                                      (_%g196661196679%_ _%g196662196683%_))))
                              (_%g196661196679%_ _%g196662196683%_))))
                      (_%g196661196679%_ _%g196662196683%_)))))
          (_%g196660196734%_ _%$stx196657%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx196738%_)
        (let* ((_%g196742196760%_
                (lambda (_%g196743196756%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196743196756%_))))
               (_%g196741196815%_
                (lambda (_%g196743196764%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196743196764%_))
                      (let ((_%e196748196767%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196743196764%_))))
                        (let ((_%hd196747196771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196748196767%_)))
                              (_%tl196746196774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196748196767%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196746196774%_))
                              (let ((_%e196751196777%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196746196774%_))))
                                (let ((_%hd196750196781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196751196777%_)))
                                      (_%tl196749196784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196751196777%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196749196784%_))
                                      (let ((_%e196754196787%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196749196784%_))))
                                        (let ((_%hd196753196791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196754196787%_)))
                                              (_%tl196752196794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196754196787%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196752196794%_))
                                              ((lambda (_%L196797%_
                                                        _%L196799%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196799%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196797%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196753196791%_
                                               _%hd196750196781%_)
                                              (_%g196742196760%_
                                               _%g196743196764%_))))
                                      (_%g196742196760%_ _%g196743196764%_))))
                              (_%g196742196760%_ _%g196743196764%_))))
                      (_%g196742196760%_ _%g196743196764%_)))))
          (_%g196741196815%_ _%$stx196738%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx196819%_)
        (let* ((_%g196823196852%_
                (lambda (_%g196824196848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196824196848%_))))
               (_%g196822196952%_
                (lambda (_%g196824196856%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196824196856%_))
                      (let ((_%e196829196859%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196824196856%_))))
                        (let ((_%hd196828196863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196829196859%_)))
                              (_%tl196827196866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196829196859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196827196866%_))
                              (let ((_g201022_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196827196866%_
                                        '0))))
                                (begin
                                  (let ((_g201023_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201022_)
                                               (##vector-length _g201022_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201023_ 2)))
                                        (error "Context expects 2 values"
                                               _g201023_)))
                                  (let ((_%target196830196869%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201022_ 0)))
                                        (_%tl196832196872%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201022_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196832196872%_))
                                        (letrec ((_%loop196833196875%_
                                                  (lambda (_%hd196831196879%_
                                                           _%rule196837196882%_
                                                           _%proc196838196884%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196831196879%_))
                                                        (let ((_%e196834196887%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196831196879%_))))
                  (let ((_%lp-hd196835196891%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196834196887%_)))
                        (_%lp-tl196836196894%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196834196887%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196835196891%_))
                        (let ((_%e196843196897%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196835196891%_))))
                          (let ((_%hd196842196901%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196843196897%_)))
                                (_%tl196841196904%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196843196897%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196841196904%_))
                                (let ((_%e196846196907%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196841196904%_))))
                                  (let ((_%hd196845196911%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196846196907%_)))
                                        (_%tl196844196914%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196846196907%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196844196914%_))
                                        (_%loop196833196875%_
                                         _%lp-tl196836196894%_
                                         (cons _%hd196845196911%_
                                               _%rule196837196882%_)
                                         (cons _%hd196842196901%_
                                               _%proc196838196884%_))
                                        (_%g196823196852%_
                                         _%g196824196856%_))))
                                (_%g196823196852%_ _%g196824196856%_))))
                        (_%g196823196852%_ _%g196824196856%_))))
                (let ((_%rule196839196917%_ (reverse _%rule196837196882%_))
                      (_%proc196840196920%_ (reverse _%proc196838196884%_)))
                  ((lambda (_%L196923%_ _%L196925%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196923%_
                                _%L196925%_))
                             (let ((__tmp201024
                                    (lambda (_%g196940196944%_
                                             _%g196941196947%_
                                             _%g196942196949%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g196941196947%_
                                                        (cons _%g196940196944%_
                                                              '())))
                                            _%g196942196949%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201024
                                '()
                                _%L196923%_
                                _%L196925%_)))))
                   _%rule196839196917%_
                   _%proc196840196920%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196833196875%_
                                           _%target196830196869%_
                                           '()
                                           '()))
                                        (_%g196823196852%_
                                         _%g196824196856%_)))))
                              (_%g196823196852%_ _%g196824196856%_))))
                      (_%g196823196852%_ _%g196824196856%_)))))
          (_%g196822196952%_ _%$stx196819%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx196957%_)
        (let* ((_%g196961196979%_
                (lambda (_%g196962196975%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196962196975%_))))
               (_%g196960197034%_
                (lambda (_%g196962196983%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196962196983%_))
                      (let ((_%e196967196986%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196962196983%_))))
                        (let ((_%hd196966196990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196967196986%_)))
                              (_%tl196965196993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196967196986%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196965196993%_))
                              (let ((_%e196970196996%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196965196993%_))))
                                (let ((_%hd196969197000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196970196996%_)))
                                      (_%tl196968197003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196970196996%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196968197003%_))
                                      (let ((_%e196973197006%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196968197003%_))))
                                        (let ((_%hd196972197010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196973197006%_)))
                                              (_%tl196971197013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196973197006%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196971197013%_))
                                              ((lambda (_%L197016%_
                                                        _%L197018%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L197018%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L197016%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197018%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196972197010%_
                                               _%hd196969197000%_)
                                              (_%g196961196979%_
                                               _%g196962196983%_))))
                                      (_%g196961196979%_ _%g196962196983%_))))
                              (_%g196961196979%_ _%g196962196983%_))))
                      (_%g196961196979%_ _%g196962196983%_)))))
          (_%g196960197034%_ _%$stx196957%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197038%_)
        (let* ((_%__stx200504200505%_ _%$stx197038%_)
               (_%g197043197068%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200504200505%_)))))
          (let ((_%__kont200507200508%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont200509200510%_
                 (lambda (_%L197115%_ _%L197117%_ _%L197118%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197118%_ (cons _%L197117%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197115%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200504200505%_))
                (let ((_%e197047197144%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200504200505%_))))
                  (let ((_%tl197045197151%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197047197144%_)))
                        (_%hd197046197148%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197047197144%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197045197151%_))
                        (_%__kont200507200508%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197045197151%_))
                            (let ((_%e197056197085%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197045197151%_))))
                              (let ((_%tl197054197092%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197056197085%_)))
                                    (_%hd197055197089%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197056197085%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197055197089%_))
                                    (let ((_%e197059197095%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197055197089%_))))
                                      (let ((_%tl197057197102%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197059197095%_)))
                                            (_%hd197058197099%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197059197095%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197057197102%_))
                                            (let ((_%e197062197105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197057197102%_))))
                                              (let ((_%tl197060197112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197062197105%_)))
                                                    (_%hd197061197109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197062197105%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197060197112%_))
                                                    (_%__kont200509200510%_
                                                     _%tl197054197092%_
                                                     _%hd197061197109%_
                                                     _%hd197058197099%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197043197068%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197043197068%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197043197068%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197043197068%_))))))
                (let () (declare (not safe)) (_%g197043197068%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx197162%_)
        (let* ((_%__stx200548200549%_ _%$stx197162%_)
               (_%g197167197198%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200548200549%_)))))
          (let ((_%__kont200551200552%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont200553200554%_
                 (lambda (_%L197265%_ _%L197267%_ _%L197268%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L197268%_
                                           (let ((__tmp201025
                                                  (lambda (_%g197288197291%_
                                                           _%g197289197294%_)
                                                    (cons _%g197288197291%_
                                                          _%g197289197294%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201025
                                              '()
                                              _%L197267%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L197265%_)
                                     '()))))))
            (let ((_%__match200591200592%_
                   (lambda (_%e197177197205%_
                            _%hd197176197209%_
                            _%tl197175197212%_
                            _%e197180197215%_
                            _%hd197179197219%_
                            _%tl197178197222%_
                            _%e197183197225%_
                            _%hd197182197229%_
                            _%tl197181197232%_
                            _%__splice200555200556%_
                            _%target197184197235%_
                            _%tl197186197238%_)
                     (letrec ((_%loop197187197241%_
                               (lambda (_%hd197185197245%_ _%sig197191197248%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197185197245%_))
                                     (let ((_%e197188197251%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd197185197245%_))))
                                       (let ((_%lp-tl197190197258%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197188197251%_)))
                                             (_%lp-hd197189197255%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197188197251%_))))
                                         (_%loop197187197241%_
                                          _%lp-tl197190197258%_
                                          (cons _%lp-hd197189197255%_
                                                _%sig197191197248%_))))
                                     (let ((_%sig197192197261%_
                                            (reverse _%sig197191197248%_)))
                                       (_%__kont200553200554%_
                                        _%tl197178197222%_
                                        _%sig197192197261%_
                                        _%hd197182197229%_))))))
                       (_%loop197187197241%_ _%target197184197235%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200548200549%_))
                  (let ((_%e197171197304%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200548200549%_))))
                    (let ((_%tl197169197311%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197171197304%_)))
                          (_%hd197170197308%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197171197304%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197169197311%_))
                          (_%__kont200551200552%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197169197311%_))
                              (let ((_%e197180197215%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197169197311%_))))
                                (let ((_%tl197178197222%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197180197215%_)))
                                      (_%hd197179197219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197180197215%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197179197219%_))
                                      (let ((_%e197183197225%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197179197219%_))))
                                        (let ((_%tl197181197232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197183197225%_)))
                                              (_%hd197182197229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197183197225%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197181197232%_))
                                              (let ((_%__splice200555200556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197181197232%_
                                                        '0))))
                                                (let ((_%tl197186197238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200555200556%_
                                                          '1)))
                                                      (_%target197184197235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200555200556%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197186197238%_))
                                                      (_%__match200591200592%_
                                                       _%e197171197304%_
                                                       _%hd197170197308%_
                                                       _%tl197169197311%_
                                                       _%e197180197215%_
                                                       _%hd197179197219%_
                                                       _%tl197178197222%_
                                                       _%e197183197225%_
                                                       _%hd197182197229%_
                                                       _%tl197181197232%_
                                                       _%__splice200555200556%_
                                                       _%target197184197235%_
                                                       _%tl197186197238%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197167197198%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197167197198%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197167197198%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197167197198%_))))))
                  (let () (declare (not safe)) (_%g197167197198%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx197323%_)
        (let* ((_%__stx200594200595%_ _%$stx197323%_)
               (_%g197328197375%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200594200595%_)))))
          (let ((_%__kont200597200598%_
                 (lambda (_%L197537%_ _%L197539%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L197539%_
                               (let ((__tmp201026
                                      (lambda (_%g197559197562%_
                                               _%g197560197565%_)
                                        (cons _%g197559197562%_
                                              _%g197560197565%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201026 '() _%L197537%_))))))
                (_%__kont200601200602%_
                 (lambda (_%L197432%_ _%L197434%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L197434%_
                               (let ((__tmp201027
                                      (lambda (_%g197451197454%_
                                               _%g197452197457%_)
                                        (cons _%g197451197454%_
                                              _%g197452197457%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201027 '() _%L197432%_)))))))
            (let* ((_%__match200661200662%_
                    (lambda (_%e197357197382%_
                             _%hd197356197386%_
                             _%tl197355197389%_
                             _%e197360197392%_
                             _%hd197359197396%_
                             _%tl197358197399%_
                             _%__splice200603200604%_
                             _%target197361197402%_
                             _%tl197363197405%_)
                      (letrec ((_%loop197364197408%_
                                (lambda (_%hd197362197412%_
                                         _%sig197368197415%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197362197412%_))
                                      (let ((_%e197365197418%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197362197412%_))))
                                        (let ((_%lp-tl197367197425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197365197418%_)))
                                              (_%lp-hd197366197422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197365197418%_))))
                                          (_%loop197364197408%_
                                           _%lp-tl197367197425%_
                                           (cons _%lp-hd197366197422%_
                                                 _%sig197368197415%_))))
                                      (let ((_%sig197369197428%_
                                             (reverse _%sig197368197415%_)))
                                        (_%__kont200601200602%_
                                         _%sig197369197428%_
                                         _%hd197359197396%_))))))
                        (_%loop197364197408%_ _%target197361197402%_ '()))))
                   (_%__match200653200654%_
                    (lambda (_%e197357197382%_
                             _%hd197356197386%_
                             _%tl197355197389%_
                             _%e197360197392%_
                             _%hd197359197396%_
                             _%tl197358197399%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl197358197399%_))
                          (let ((_%__splice200603200604%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl197358197399%_
                                    '0))))
                            (let ((_%tl197363197405%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice200603200604%_
                                      '1)))
                                  (_%target197361197402%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice200603200604%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197363197405%_))
                                  (_%__match200661200662%_
                                   _%e197357197382%_
                                   _%hd197356197386%_
                                   _%tl197355197389%_
                                   _%e197360197392%_
                                   _%hd197359197396%_
                                   _%tl197358197399%_
                                   _%__splice200603200604%_
                                   _%target197361197402%_
                                   _%tl197363197405%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g197328197375%_)))))
                          (let () (declare (not safe)) (_%g197328197375%_)))))
                   (_%__match200641200642%_
                    (lambda (_%e197334197467%_
                             _%hd197333197471%_
                             _%tl197332197474%_
                             _%e197337197477%_
                             _%hd197336197481%_
                             _%tl197335197484%_
                             _%e197340197487%_
                             _%hd197339197491%_
                             _%tl197338197494%_
                             _%e197343197497%_
                             _%hd197342197501%_
                             _%tl197341197504%_
                             _%__splice200599200600%_
                             _%target197344197507%_
                             _%tl197346197510%_)
                      (letrec ((_%loop197347197513%_
                                (lambda (_%hd197345197517%_
                                         _%sig197351197520%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197345197517%_))
                                      (let ((_%e197348197523%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197345197517%_))))
                                        (let ((_%lp-tl197350197530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197348197523%_)))
                                              (_%lp-hd197349197527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197348197523%_))))
                                          (_%loop197347197513%_
                                           _%lp-tl197350197530%_
                                           (cons _%lp-hd197349197527%_
                                                 _%sig197351197520%_))))
                                      (let ((_%sig197352197533%_
                                             (reverse _%sig197351197520%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197338197494%_))
                                            (_%__kont200597200598%_
                                             _%sig197352197533%_
                                             _%hd197336197481%_)
                                            (_%__match200653200654%_
                                             _%e197334197467%_
                                             _%hd197333197471%_
                                             _%tl197332197474%_
                                             _%e197337197477%_
                                             _%hd197336197481%_
                                             _%tl197335197484%_)))))))
                        (_%loop197347197513%_ _%target197344197507%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200594200595%_))
                  (let ((_%e197334197467%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200594200595%_))))
                    (let ((_%tl197332197474%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197334197467%_)))
                          (_%hd197333197471%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197334197467%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197332197474%_))
                          (let ((_%e197337197477%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197332197474%_))))
                            (let ((_%tl197335197484%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197337197477%_)))
                                  (_%hd197336197481%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197337197477%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197335197484%_))
                                  (let ((_%e197340197487%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197335197484%_))))
                                    (let ((_%tl197338197494%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197340197487%_)))
                                          (_%hd197339197491%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197340197487%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd197339197491%_))
                                          (let ((_%e197343197497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd197339197491%_))))
                                            (let ((_%tl197341197504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197343197497%_)))
                                                  (_%hd197342197501%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197343197497%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd197342197501%_))
                                                  (if (let ((__tmp201028
                                                             |gxc[1]#_g201029_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp201028
                                                         _%hd197342197501%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl197341197504%_))
                                                          (let ((_%__splice200599200600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197341197504%_ '0))))
                    (let ((_%tl197346197510%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200599200600%_ '1)))
                          (_%target197344197507%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200599200600%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197346197510%_))
                          (_%__match200641200642%_
                           _%e197334197467%_
                           _%hd197333197471%_
                           _%tl197332197474%_
                           _%e197337197477%_
                           _%hd197336197481%_
                           _%tl197335197484%_
                           _%e197340197487%_
                           _%hd197339197491%_
                           _%tl197338197494%_
                           _%e197343197497%_
                           _%hd197342197501%_
                           _%tl197341197504%_
                           _%__splice200599200600%_
                           _%target197344197507%_
                           _%tl197346197510%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197335197484%_))
                              (let ((_%__splice200603200604%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197335197484%_
                                        '0))))
                                (let ((_%tl197363197405%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice200603200604%_
                                          '1)))
                                      (_%target197361197402%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice200603200604%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197363197405%_))
                                      (_%__match200661200662%_
                                       _%e197334197467%_
                                       _%hd197333197471%_
                                       _%tl197332197474%_
                                       _%e197337197477%_
                                       _%hd197336197481%_
                                       _%tl197335197484%_
                                       _%__splice200603200604%_
                                       _%target197361197402%_
                                       _%tl197363197405%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g197328197375%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197328197375%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197335197484%_))
                      (let ((_%__splice200603200604%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197335197484%_
                                '0))))
                        (let ((_%tl197363197405%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice200603200604%_ '1)))
                              (_%target197361197402%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice200603200604%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197363197405%_))
                              (_%__match200661200662%_
                               _%e197334197467%_
                               _%hd197333197471%_
                               _%tl197332197474%_
                               _%e197337197477%_
                               _%hd197336197481%_
                               _%tl197335197484%_
                               _%__splice200603200604%_
                               _%target197361197402%_
                               _%tl197363197405%_)
                              (let ()
                                (declare (not safe))
                                (_%g197328197375%_)))))
                      (let () (declare (not safe)) (_%g197328197375%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl197335197484%_))
                  (let ((_%__splice200603200604%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197335197484%_ '0))))
                    (let ((_%tl197363197405%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200603200604%_ '1)))
                          (_%target197361197402%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200603200604%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197363197405%_))
                          (_%__match200661200662%_
                           _%e197334197467%_
                           _%hd197333197471%_
                           _%tl197332197474%_
                           _%e197337197477%_
                           _%hd197336197481%_
                           _%tl197335197484%_
                           _%__splice200603200604%_
                           _%target197361197402%_
                           _%tl197363197405%_)
                          (let () (declare (not safe)) (_%g197328197375%_)))))
                  (let () (declare (not safe)) (_%g197328197375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197335197484%_))
                                                      (let ((_%__splice200603200604%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197335197484%_ '0))))
                (let ((_%tl197363197405%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200603200604%_ '1)))
                      (_%target197361197402%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200603200604%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197363197405%_))
                      (_%__match200661200662%_
                       _%e197334197467%_
                       _%hd197333197471%_
                       _%tl197332197474%_
                       _%e197337197477%_
                       _%hd197336197481%_
                       _%tl197335197484%_
                       _%__splice200603200604%_
                       _%target197361197402%_
                       _%tl197363197405%_)
                      (let () (declare (not safe)) (_%g197328197375%_)))))
              (let () (declare (not safe)) (_%g197328197375%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197335197484%_))
                                              (let ((_%__splice200603200604%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197335197484%_
                                                        '0))))
                                                (let ((_%tl197363197405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200603200604%_
                                                          '1)))
                                                      (_%target197361197402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200603200604%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197363197405%_))
                                                      (_%__match200661200662%_
                                                       _%e197334197467%_
                                                       _%hd197333197471%_
                                                       _%tl197332197474%_
                                                       _%e197337197477%_
                                                       _%hd197336197481%_
                                                       _%tl197335197484%_
                                                       _%__splice200603200604%_
                                                       _%target197361197402%_
                                                       _%tl197363197405%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197328197375%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197328197375%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197335197484%_))
                                      (let ((_%__splice200603200604%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197335197484%_
                                                '0))))
                                        (let ((_%tl197363197405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200603200604%_
                                                  '1)))
                                              (_%target197361197402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200603200604%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197363197405%_))
                                              (_%__match200661200662%_
                                               _%e197334197467%_
                                               _%hd197333197471%_
                                               _%tl197332197474%_
                                               _%e197337197477%_
                                               _%hd197336197481%_
                                               _%tl197335197484%_
                                               _%__splice200603200604%_
                                               _%target197361197402%_
                                               _%tl197363197405%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197328197375%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197328197375%_))))))
                          (let () (declare (not safe)) (_%g197328197375%_)))))
                  (let () (declare (not safe)) (_%g197328197375%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx198653%_ _%id198655%_)
        (let ((_%proc198659%_
               (let ((__tmp201030
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id198655%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201030))))
          (if (let () (declare (not safe)) (procedure? _%proc198659%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx198653%_
                 _%id198655%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx198644%_ _%id198646%_)
        (let ((_%klass198650%_
               (let ((__tmp201031
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id198646%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201031))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass198650%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx198644%_
                 _%id198646%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx197894%_ _%proc197896%_ _%sig197897%_)
        (letrec ((_%signature-arity197899%_
                  (lambda (_%args198576%_)
                    (let _%loop198579%_ ((_%rest198582%_ _%args198576%_)
                                         (_%count198584%_ '0))
                      (let* ((_%rest198585198596%_ _%rest198582%_)
                             (_%E198589198602%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest198585198596%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K198592198633%_
                               (lambda (_%rest198630%_)
                                 (let ((__tmp201032
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count198584%_ '1))))
                                   (declare (not safe))
                                   (_%loop198579%_
                                    _%rest198630%_
                                    __tmp201032))))
                              (_%K198591198622%_ (lambda () _%count198584%_))
                              (_%K198590198610%_
                               (lambda () (cons _%count198584%_ '()))))
                          (let ((_%try-match198587198626%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest198585198596%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K198591198622%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K198590198610%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest198585198596%_))
                                (let* ((_%tl198594198637%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest198585198596%_)))
                                       (_%rest198641%_ _%tl198594198637%_))
                                  (declare (not safe))
                                  (_%K198592198633%_ _%rest198641%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match198587198626%_)))))))))
                 (_%make-signature197901%_
                  (lambda (_%args198458%_
                           _%return198460%_
                           _%effect198461%_
                           _%unchecked198462%_)
                    (let ((__tmp201033
                           (lambda (_%g198463198465%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx197894%_
                                _%g198463198465%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp201033 _%args198458%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx197894%_ _%return198460%_))
                    (if _%unchecked198462%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx197894%_
                           _%unchecked198462%_))
                        '#!void)
                    (let ((_%arity198469%_
                           (let ((__tmp201034
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args198458%_))))
                             (declare (not safe))
                             (_%signature-arity197899%_ __tmp201034))))
                      (if _%effect198461%_
                          (let ((_%effect198472%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect198461%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect198472%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect198472%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx197894%_
                                   _%proc197896%_
                                   _%effect198472%_))))
                          '#!void)
                      (cons _%arity198469%_
                            (cons (let* ((_%g198475198498%_
                                          (lambda (_%g198476198494%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g198476198494%_))))
                                         (_%g198474198572%_
                                          (lambda (_%g198476198502%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g198476198502%_))
                                                (let ((_%e198483198505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g198476198502%_))))
                                                  (let ((_%hd198482198509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198483198505%_)))
                                                        (_%tl198481198512%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198483198505%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198481198512%_))
                                                        (let ((_%e198486198515%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198481198512%_))))
                  (let ((_%hd198485198519%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198486198515%_)))
                        (_%tl198484198522%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198486198515%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198484198522%_))
                        (let ((_%e198489198525%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198484198522%_))))
                          (let ((_%hd198488198529%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198489198525%_)))
                                (_%tl198487198532%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198489198525%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198487198532%_))
                                (let ((_%e198492198535%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198487198532%_))))
                                  (let ((_%hd198491198539%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198492198535%_)))
                                        (_%tl198490198542%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198492198535%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198490198542%_))
                                        ((lambda (_%L198545%_
                                                  _%L198547%_
                                                  _%L198548%_
                                                  _%L198549%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!signature))
                                                   (cons 'arguments:
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'quote))
                             (cons _%L198549%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198548%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L198547%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L198545%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd198491198539%_
                                         _%hd198488198529%_
                                         _%hd198485198519%_
                                         _%hd198482198509%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g198475198498%_
                                           _%g198476198502%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g198475198498%_ _%g198476198502%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g198475198498%_ _%g198476198502%_)))))
                (let ()
                  (declare (not safe))
                  (_%g198475198498%_ _%g198476198502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198475198498%_
                                                   _%g198476198502%_)))))
                                         (__tmp201035
                                          (list _%args198458%_
                                                _%return198460%_
                                                _%effect198461%_
                                                _%unchecked198462%_)))
                                    (declare (not safe))
                                    (_%g198474198572%_ __tmp201035))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx197894%_ _%proc197896%_))
          (let* ((_%__stx200672200673%_ _%sig197897%_)
                 (_%g197908198011%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200672200673%_)))))
            (let ((_%__kont200675200676%_
                   (lambda (_%L198439%_ _%L198441%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature197901%_
                        _%L198441%_
                        _%L198439%_
                        '#f
                        '#f))))
                  (_%__kont200677200678%_
                   (lambda (_%L198390%_ _%L198392%_ _%L198393%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature197901%_
                        _%L198393%_
                        _%L198392%_
                        _%L198390%_
                        '#f))))
                  (_%__kont200679200680%_
                   (lambda (_%L198314%_ _%L198316%_ _%L198317%_)
                     (let ((__tmp201036
                            (let ((__tmp201037
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc197896%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201037))))
                       (declare (not safe))
                       (_%make-signature197901%_
                        _%L198317%_
                        _%L198316%_
                        _%L198314%_
                        __tmp201036))))
                  (_%__kont200681200682%_
                   (lambda (_%L198220%_ _%L198222%_ _%L198223%_ _%L198224%_)
                     (let ((__tmp201038
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198220%_))))
                       (declare (not safe))
                       (_%make-signature197901%_
                        _%L198224%_
                        _%L198223%_
                        '#f
                        __tmp201038))))
                  (_%__kont200683200684%_
                   (lambda (_%L198127%_ _%L198129%_)
                     (let ((__tmp201039
                            (let ((__tmp201040
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc197896%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201040))))
                       (declare (not safe))
                       (_%make-signature197901%_
                        _%L198129%_
                        _%L198127%_
                        '#f
                        __tmp201039))))
                  (_%__kont200685200686%_
                   (lambda (_%L198062%_ _%L198064%_ _%L198065%_)
                     (let ((__tmp201041
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198062%_))))
                       (declare (not safe))
                       (_%make-signature197901%_
                        _%L198065%_
                        _%L198064%_
                        '#f
                        __tmp201041)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200672200673%_))
                  (let ((_%e197914198419%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200672200673%_))))
                    (let ((_%tl197912198426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197914198419%_)))
                          (_%hd197913198423%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197914198419%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197912198426%_))
                          (let ((_%e197917198429%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197912198426%_))))
                            (let ((_%tl197915198436%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197917198429%_)))
                                  (_%hd197916198433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197917198429%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197915198436%_))
                                  (_%__kont200675200676%_
                                   _%hd197916198433%_
                                   _%hd197913198423%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197915198436%_))
                                      (let ((_%e197929198366%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197915198436%_))))
                                        (let ((_%tl197927198373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197929198366%_)))
                                              (_%hd197928198370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197929198366%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd197928198370%_))
                                              (let ((_%e197930198376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd197928198370%_))))
                                                (if (equal? _%e197930198376%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl197927198373%_))
                                                        (let ((_%e197933198380%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl197927198373%_))))
                  (let ((_%tl197931198387%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197933198380%_)))
                        (_%hd197932198384%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197933198380%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197931198387%_))
                        (_%__kont200677200678%_
                         _%hd197932198384%_
                         _%hd197916198433%_
                         _%hd197913198423%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197931198387%_))
                            (let ((_%e197952198300%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197931198387%_))))
                              (let ((_%tl197950198307%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197952198300%_)))
                                    (_%hd197951198304%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197952198300%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd197951198304%_))
                                    (let ((_%e197953198310%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197951198304%_))))
                                      (if (equal? _%e197953198310%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197950198307%_))
                                              (_%__kont200679200680%_
                                               _%hd197932198384%_
                                               _%hd197916198433%_
                                               _%hd197913198423%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197950198307%_))
                                                  (let ((_%e197977198210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl197950198307%_))))
                                                    (let ((_%tl197975198217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197977198210%_)))
                                                          (_%hd197976198214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197977198210%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197975198217%_))
                                                          (_%__kont200681200682%_
                                                           _%hd197976198214%_
                                                           _%hd197932198384%_
                                                           _%hd197916198433%_
                                                           _%hd197913198423%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197908198011%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197908198011%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197908198011%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197908198011%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197908198011%_))))))
                (let () (declare (not safe)) (_%g197908198011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e197930198376%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl197927198373%_))
                                                            (_%__kont200683200684%_
                                                             _%hd197916198433%_
                                                             _%hd197913198423%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl197927198373%_))
                        (let ((_%e198005198052%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197927198373%_))))
                          (let ((_%tl198003198059%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198005198052%_)))
                                (_%hd198004198056%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198005198052%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198003198059%_))
                                (_%__kont200685200686%_
                                 _%hd198004198056%_
                                 _%hd197916198433%_
                                 _%hd197913198423%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197908198011%_)))))
                        (let () (declare (not safe)) (_%g197908198011%_))))
                (let () (declare (not safe)) (_%g197908198011%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g197908198011%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197908198011%_))))))
                          (let () (declare (not safe)) (_%g197908198011%_)))))
                  (let () (declare (not safe)) (_%g197908198011%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig197574%_)
        (let* ((_%g197577197643%_
                (lambda (_%g197578197639%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197578197639%_))))
               (_%g197576197890%_
                (lambda (_%g197578197647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197578197647%_))
                      (let ((_%e197585197650%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197578197647%_))))
                        (let ((_%hd197584197654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197585197650%_)))
                              (_%tl197583197657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197585197650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197583197657%_))
                              (let ((_%e197588197660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197583197657%_))))
                                (let ((_%hd197587197664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197588197660%_)))
                                      (_%tl197586197667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197588197660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd197587197664%_))
                                      (let ((_%e197589197670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197587197664%_))))
                                        (if (equal? _%e197589197670%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197586197667%_))
                                                (let ((_%e197592197674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl197586197667%_))))
                                                  (let ((_%hd197591197678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197592197674%_)))
                                                        (_%tl197590197681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197592197674%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197591197678%_))
                                                        (let ((_%e197595197684%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197591197678%_))))
                  (let ((_%hd197594197688%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197595197684%_)))
                        (_%tl197593197691%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197595197684%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd197594197688%_))
                        (if (let ((__tmp201042 |gxc[1]#_g201043_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp201042
                               _%hd197594197688%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197593197691%_))
                                (let ((_%e197598197694%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197593197691%_))))
                                  (let ((_%hd197597197698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197598197694%_)))
                                        (_%tl197596197701%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197598197694%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197596197701%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197590197681%_))
                                            (let ((_%e197601197704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197590197681%_))))
                                              (let ((_%hd197600197708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197601197704%_)))
                                                    (_%tl197599197711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197601197704%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197600197708%_))
                                                    (let ((_%e197602197714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197600197708%_))))
                                                      (if (equal? _%e197602197714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197599197711%_))
                      (let ((_%e197605197718%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197599197711%_))))
                        (let ((_%hd197604197722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197605197718%_)))
                              (_%tl197603197725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197605197718%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197604197722%_))
                              (let ((_%e197608197728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd197604197722%_))))
                                (let ((_%hd197607197732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197608197728%_)))
                                      (_%tl197606197735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197608197728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197607197732%_))
                                      (if (let ((__tmp201044
                                                 |gxc[1]#_g201045_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp201044
                                             _%hd197607197732%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197606197735%_))
                                              (let ((_%e197611197738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197606197735%_))))
                                                (let ((_%hd197610197742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197611197738%_)))
                                                      (_%tl197609197745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197611197738%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197609197745%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197603197725%_))
                                                          (let ((_%e197614197748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl197603197725%_))))
                    (let ((_%hd197613197752%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197614197748%_)))
                          (_%tl197612197755%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197614197748%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197613197752%_))
                          (let ((_%e197615197758%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197613197752%_))))
                            (if (equal? _%e197615197758%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197612197755%_))
                                    (let ((_%e197618197762%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl197612197755%_))))
                                      (let ((_%hd197617197766%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197618197762%_)))
                                            (_%tl197616197769%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197618197762%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd197617197766%_))
                                            (let ((_%e197621197772%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd197617197766%_))))
                                              (let ((_%hd197620197776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197621197772%_)))
                                                    (_%tl197619197779%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197621197772%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd197620197776%_))
                                                    (if (let ((__tmp201046
                                                               |gxc[1]#_g201047_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp201046
                                                           _%hd197620197776%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197619197779%_))
                                                            (let ((_%e197624197782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl197619197779%_))))
                      (let ((_%hd197623197786%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197624197782%_)))
                            (_%tl197622197789%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197624197782%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197622197789%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197616197769%_))
                                (let ((_%e197627197792%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197616197769%_))))
                                  (let ((_%hd197626197796%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197627197792%_)))
                                        (_%tl197625197799%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197627197792%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd197626197796%_))
                                        (let ((_%e197628197802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd197626197796%_))))
                                          (if (equal? _%e197628197802%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197625197799%_))
                                                  (let ((_%e197631197806%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl197625197799%_))))
                                                    (let ((_%hd197630197810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197631197806%_)))
                                                          (_%tl197629197813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197631197806%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197630197810%_))
                                                          (let ((_%e197634197816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd197630197810%_))))
                    (let ((_%hd197633197820%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197634197816%_)))
                          (_%tl197632197823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197634197816%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197633197820%_))
                          (if (let ((__tmp201048 |gxc[1]#_g201049_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp201048
                                 _%hd197633197820%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197632197823%_))
                                  (let ((_%e197637197826%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197632197823%_))))
                                    (let ((_%hd197636197830%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197637197826%_)))
                                          (_%tl197635197833%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197637197826%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197635197833%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197629197813%_))
                                              ((lambda (_%L197836%_
                                                        _%L197838%_
                                                        _%L197839%_
                                                        _%L197840%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L197836%_))
                                                     (cons _%L197836%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197839%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd197636197830%_
                                               _%hd197623197786%_
                                               _%hd197610197742%_
                                               _%hd197597197698%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197577197643%_
                                                 _%g197578197647%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197577197643%_
                                             _%g197578197647%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197577197643%_ _%g197578197647%_)))
                              (let ()
                                (declare (not safe))
                                (_%g197577197643%_ _%g197578197647%_)))
                          (let ()
                            (declare (not safe))
                            (_%g197577197643%_ _%g197578197647%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g197577197643%_ _%g197578197647%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197577197643%_
                                                     _%g197578197647%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197577197643%_
                                                 _%g197578197647%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197577197643%_
                                           _%g197578197647%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g197577197643%_ _%g197578197647%_)))
                            (let ()
                              (declare (not safe))
                              (_%g197577197643%_ _%g197578197647%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g197577197643%_ _%g197578197647%_)))
                (let ()
                  (declare (not safe))
                  (_%g197577197643%_ _%g197578197647%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197577197643%_
                                                       _%g197578197647%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197577197643%_
                                               _%g197578197647%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197577197643%_ _%g197578197647%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197577197643%_ _%g197578197647%_))))
                          (let ()
                            (declare (not safe))
                            (_%g197577197643%_ _%g197578197647%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g197577197643%_ _%g197578197647%_)))
              (let ()
                (declare (not safe))
                (_%g197577197643%_ _%g197578197647%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g197577197643%_
                                                 _%g197578197647%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197577197643%_
                                             _%g197578197647%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197577197643%_
                                         _%g197578197647%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197577197643%_ _%g197578197647%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g197577197643%_ _%g197578197647%_)))
                  (let ()
                    (declare (not safe))
                    (_%g197577197643%_ _%g197578197647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197577197643%_
                                                       _%g197578197647%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197577197643%_
                                               _%g197578197647%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197577197643%_
                                           _%g197578197647%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g197577197643%_ _%g197578197647%_)))
                            (let ()
                              (declare (not safe))
                              (_%g197577197643%_ _%g197578197647%_)))
                        (let ()
                          (declare (not safe))
                          (_%g197577197643%_ _%g197578197647%_)))))
                (let ()
                  (declare (not safe))
                  (_%g197577197643%_ _%g197578197647%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197577197643%_
                                                   _%g197578197647%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197577197643%_
                                               _%g197578197647%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197577197643%_
                                         _%g197578197647%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197577197643%_ _%g197578197647%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g197577197643%_ _%g197578197647%_))))))
          (declare (not safe))
          (_%g197576197890%_ _%sig197574%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx198662%_)
        (let* ((_%g198665198683%_
                (lambda (_%g198666198679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198666198679%_))))
               (_%g198664198738%_
                (lambda (_%g198666198687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198666198687%_))
                      (let ((_%e198671198690%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198666198687%_))))
                        (let ((_%hd198670198694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198671198690%_)))
                              (_%tl198669198697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198671198690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198669198697%_))
                              (let ((_%e198674198700%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198669198697%_))))
                                (let ((_%hd198673198704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198674198700%_)))
                                      (_%tl198672198707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198674198700%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198672198707%_))
                                      (let ((_%e198677198710%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198672198707%_))))
                                        (let ((_%hd198676198714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198677198710%_)))
                                              (_%tl198675198717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198677198710%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198675198717%_))
                                              ((lambda (_%L198720%_
                                                        _%L198722%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L198722%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L198720%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx198662%_
                                                          _%L198722%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx198662%_
                                                          _%L198720%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L198722%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L198720%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g198665198683%_
                                                      _%g198666198687%_)))
                                               _%hd198676198714%_
                                               _%hd198673198704%_)
                                              (_%g198665198683%_
                                               _%g198666198687%_))))
                                      (_%g198665198683%_ _%g198666198687%_))))
                              (_%g198665198683%_ _%g198666198687%_))))
                      (_%g198665198683%_ _%g198666198687%_)))))
          (_%g198664198738%_ _%stx198662%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx198742%_)
        (let* ((_%g198745198769%_
                (lambda (_%g198746198765%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198746198765%_))))
               (_%g198744199052%_
                (lambda (_%g198746198773%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198746198773%_))
                      (let ((_%e198751198776%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198746198773%_))))
                        (let ((_%hd198750198780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198751198776%_)))
                              (_%tl198749198783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198751198776%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198749198783%_))
                              (let ((_%e198754198786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198749198783%_))))
                                (let ((_%hd198753198790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198754198786%_)))
                                      (_%tl198752198793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198754198786%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198752198793%_))
                                      (let ((_g201050_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198752198793%_
                                                '0))))
                                        (begin
                                          (let ((_g201051_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201050_)
                                                       (##vector-length
                                                        _g201050_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201051_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201051_)))
                                          (let ((_%target198755198796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201050_ 0)))
                                                (_%tl198757198799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201050_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198757198799%_))
                                                (letrec ((_%loop198758198802%_
                                                          (lambda (_%hd198756198806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature198762198809%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198756198806%_))
                        (let ((_%e198759198812%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd198756198806%_))))
                          (let ((_%lp-hd198760198816%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198759198812%_)))
                                (_%lp-tl198761198819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198759198812%_))))
                            (_%loop198758198802%_
                             _%lp-tl198761198819%_
                             (cons _%lp-hd198760198816%_
                                   _%signature198762198809%_))))
                        (let ((_%signature198763198822%_
                               (reverse _%signature198762198809%_)))
                          ((lambda (_%L198826%_ _%L198828%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L198828%_))
                                 (let* ((_%g198846198861%_
                                         (lambda (_%g198847198857%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g198847198857%_))))
                                        (_%g198845199040%_
                                         (lambda (_%g198847198865%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g198847198865%_))
                                               (let ((_%e198852198868%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g198847198865%_))))
                                                 (let ((_%hd198851198872%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198852198868%_)))
                                                       (_%tl198850198875%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198852198868%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198850198875%_))
                                                       (let ((_%e198855198878%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl198850198875%_))))
                 (let ((_%hd198854198882%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198855198878%_)))
                       (_%tl198853198885%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198855198878%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198853198885%_))
                       ((lambda (_%L198888%_ _%L198890%_)
                          (let ()
                            (let* ((_%g198906198914%_
                                    (lambda (_%g198907198910%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g198907198910%_))))
                                   (_%g198905199036%_
                                    (lambda (_%g198907198918%_)
                                      ((lambda (_%L198921%_)
                                         (let ()
                                           (let* ((_%unchecked198934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L198888%_)))
                                                  (_%g198937198945%_
                                                   (lambda (_%g198938198941%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g198938198941%_))))
                                                  (_%g198936198968%_
                                                   (lambda (_%g198938198949%_)
                                                     ((lambda (_%L198952%_)
                                                        (let ()
                                                          (let ()
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin))
                          (cons _%L198921%_ (cons _%L198952%_ '()))))))
              _%g198938198949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g198936198968%_
                                              (if _%unchecked198934%_
                                                  (let* ((_%g198972198987%_
                                                          (lambda (_%g198973198983%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g198973198983%_))))
                                                         (_%g198971199032%_
                                                          (lambda (_%g198973198991%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g198973198991%_))
                        (let ((_%e198978198994%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g198973198991%_))))
                          (let ((_%hd198977198998%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198978198994%_)))
                                (_%tl198976199001%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198978198994%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198976199001%_))
                                (let ((_%e198981199004%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198976199001%_))))
                                  (let ((_%hd198980199008%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198981199004%_)))
                                        (_%tl198979199011%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198981199004%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198979199011%_))
                                        ((lambda (_%L199014%_ _%L199016%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L199016%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198890%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L199014%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd198980199008%_
                                         _%hd198977198998%_)
                                        (_%g198972198987%_
                                         _%g198973198991%_))))
                                (_%g198972198987%_ _%g198973198991%_))))
                        (_%g198972198987%_ _%g198973198991%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198971199032%_
                                                     _%unchecked198934%_))
                                                  '(begin))))))
                                       _%g198907198918%_))))
                              (_%g198905199036%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L198828%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198890%_ '()))
                     (cons '#f (cons 'signature: (cons _%L198888%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd198854198882%_
                        _%hd198851198872%_)
                       (_%g198846198861%_ _%g198847198865%_))))
               (_%g198846198861%_ _%g198847198865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198846198861%_
                                                _%g198847198865%_)))))
                                   (_%g198845199040%_
                                    (let ((__tmp201052
                                           (let ((__tmp201053
                                                  (lambda (_%g199043199046%_
                                                           _%g199044199049%_)
                                                    (cons _%g199043199046%_
                                                          _%g199044199049%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201053
                                              '()
                                              _%L198826%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx198742%_
                                       _%L198828%_
                                       __tmp201052))))
                                 (_%g198745198769%_ _%g198746198773%_)))
                           _%signature198763198822%_
                           _%hd198753198790%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop198758198802%_
                                                   _%target198755198796%_
                                                   '()))
                                                (_%g198745198769%_
                                                 _%g198746198773%_)))))
                                      (_%g198745198769%_ _%g198746198773%_))))
                              (_%g198745198769%_ _%g198746198773%_))))
                      (_%g198745198769%_ _%g198746198773%_)))))
          (_%g198744199052%_ _%stx198742%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199057%_)
        (let* ((_%g199060199084%_
                (lambda (_%g199061199080%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199061199080%_))))
               (_%g199059199898%_
                (lambda (_%g199061199088%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199061199088%_))
                      (let ((_%e199066199091%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199061199088%_))))
                        (let ((_%hd199065199095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199066199091%_)))
                              (_%tl199064199098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199066199091%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199064199098%_))
                              (let ((_%e199069199101%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199064199098%_))))
                                (let ((_%hd199068199105%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199069199101%_)))
                                      (_%tl199067199108%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199069199101%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199067199108%_))
                                      (let ((_g201054_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199067199108%_
                                                '0))))
                                        (begin
                                          (let ((_g201055_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201054_)
                                                       (##vector-length
                                                        _g201054_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201055_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201055_)))
                                          (let ((_%target199070199111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201054_ 0)))
                                                (_%tl199072199114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201054_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199072199114%_))
                                                (letrec ((_%loop199073199117%_
                                                          (lambda (_%hd199071199121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199077199124%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199071199121%_))
                        (let ((_%e199074199127%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199071199121%_))))
                          (let ((_%lp-hd199075199131%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199074199127%_)))
                                (_%lp-tl199076199134%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199074199127%_))))
                            (_%loop199073199117%_
                             _%lp-tl199076199134%_
                             (cons _%lp-hd199075199131%_
                                   _%case-signature199077199124%_))))
                        (let ((_%case-signature199078199137%_
                               (reverse _%case-signature199077199124%_)))
                          ((lambda (_%L199141%_ _%L199143%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199143%_))
                                 (let* ((_%signatures199174%_
                                         (map (lambda (_%g199160199162%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx199057%_
                                                   _%L199143%_
                                                   _%g199160199162%_)))
                                              (let ((__tmp201056
                                                     (lambda (_%g199165199168%_
                                                              _%g199166199171%_)
                                                       (cons _%g199165199168%_
                                                             _%g199166199171%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp201056
                                                 '()
                                                 _%L199141%_))))
                                        (_%g199177199203%_
                                         (lambda (_%g199178199199%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199178199199%_))))
                                        (_%g199176199894%_
                                         (lambda (_%g199178199207%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g199178199207%_))
                                               (let ((_g201057_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g199178199207%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g201058_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g201057_)
                        (##vector-length _g201057_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g201058_ 2)))
                 (error "Context expects 2 values" _g201058_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target199181199210%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201057_
                                                             0)))
                                                         (_%tl199183199213%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201057_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199183199213%_))
                                                         (letrec ((_%loop199184199216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd199182199220%_
                                    _%sig199188199223%_
                                    _%arity199189199225%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd199182199220%_))
                                 (let ((_%e199185199228%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd199182199220%_))))
                                   (let ((_%lp-hd199186199232%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199185199228%_)))
                                         (_%lp-tl199187199235%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199185199228%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd199186199232%_))
                                         (let ((_%e199194199238%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd199186199232%_))))
                                           (let ((_%hd199193199242%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199194199238%_)))
                                                 (_%tl199192199245%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199194199238%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199192199245%_))
                                                 (let ((_%e199197199248%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199192199245%_))))
                                                   (let ((_%hd199196199252%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199197199248%_)))
                                                         (_%tl199195199255%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199197199248%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199195199255%_))
                                                         (_%loop199184199216%_
                                                          _%lp-tl199187199235%_
                                                          (cons _%hd199196199252%_
                                                                _%sig199188199223%_)
                                                          (cons _%hd199193199242%_
                                                                _%arity199189199225%_))
                                                         (_%g199177199203%_
                                                          _%g199178199207%_))))
                                                 (_%g199177199203%_
                                                  _%g199178199207%_))))
                                         (_%g199177199203%_
                                          _%g199178199207%_))))
                                 (let ((_%sig199190199258%_
                                        (reverse _%sig199188199223%_))
                                       (_%arity199191199261%_
                                        (reverse _%arity199189199225%_)))
                                   ((lambda (_%L199264%_ _%L199266%_)
                                      (let ()
                                        (let* ((_%g199283199291%_
                                                (lambda (_%g199284199287%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g199284199287%_))))
                                               (_%g199282199879%_
                                                (lambda (_%g199284199295%_)
                                                  ((lambda (_%L199298%_)
                                                     (let ()
                                                       (let* ((_%g199311199319%_
                                                               (lambda (_%g199312199315%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g199312199315%_))))
                      (_%g199310199341%_
                       (lambda (_%g199312199323%_)
                         ((lambda (_%L199326%_)
                            (let ()
                              (let ()
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'begin))
                                      (cons _%L199298%_
                                            (cons _%L199326%_ '()))))))
                          _%g199312199323%_))))
                 (_%g199310199341%_
                  (let ((_g201059_
                         (let _%loop199345%_ ((_%rest199348%_
                                               _%signatures199174%_)
                                              (_%unchecked-proc199350%_ '#f)
                                              (_%unchecked-clauses199351%_
                                               '()))
                           (let* ((_%rest199352199360%_ _%rest199348%_)
                                  (_%else199354199372%_
                                   (lambda ()
                                     (values _%unchecked-proc199350%_
                                             (reverse!
                                              _%unchecked-clauses199351%_))))
                                  (_%K199356199744%_
                                   (lambda (_%rest199376%_ _%hd199378%_)
                                     (let* ((_%g199380199453%_
                                             (lambda (_%g199381199449%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199381199449%_))))
                                            (_%g199379199740%_
                                             (lambda (_%g199381199457%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199381199457%_))
                                                   (let ((_%e199389199460%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g199381199457%_))))
                                                     (let ((_%hd199388199464%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199389199460%_)))
                                                           (_%tl199387199467%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199389199460%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199387199467%_))
                                                           (let ((_%e199392199470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl199387199467%_))))
                     (let ((_%hd199391199474%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199392199470%_)))
                           (_%tl199390199477%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199392199470%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199391199474%_))
                           (let ((_%e199395199480%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd199391199474%_))))
                             (let ((_%hd199394199484%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199395199480%_)))
                                   (_%tl199393199487%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199395199480%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199393199487%_))
                                   (let ((_%e199398199490%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl199393199487%_))))
                                     (let ((_%hd199397199494%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199398199490%_)))
                                           (_%tl199396199497%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199398199490%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd199397199494%_))
                                           (let ((_%e199399199500%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd199397199494%_))))
                                             (if (equal? _%e199399199500%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199396199497%_))
                                                     (let ((_%e199402199504%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl199396199497%_))))
                                                       (let ((_%hd199401199508%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e199402199504%_)))
                     (_%tl199400199511%_
                      (let () (declare (not safe)) (##cdr _%e199402199504%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd199401199508%_))
                     (let ((_%e199405199514%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd199401199508%_))))
                       (let ((_%hd199404199518%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199405199514%_)))
                             (_%tl199403199521%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199405199514%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd199404199518%_))
                             (if (let ((__tmp201061 |gxc[1]#_g201062_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp201061
                                    _%hd199404199518%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199403199521%_))
                                     (let ((_%e199408199524%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199403199521%_))))
                                       (let ((_%hd199407199528%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199408199524%_)))
                                             (_%tl199406199531%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199408199524%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl199406199531%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199400199511%_))
                                                 (let ((_%e199411199534%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199400199511%_))))
                                                   (let ((_%hd199410199538%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199411199534%_)))
                                                         (_%tl199409199541%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199411199534%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd199410199538%_))
                                                         (let ((_%e199412199544%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd199410199538%_))))
                   (if (equal? _%e199412199544%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199409199541%_))
                           (let ((_%e199415199548%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl199409199541%_))))
                             (let ((_%hd199414199552%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199415199548%_)))
                                   (_%tl199413199555%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199415199548%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199414199552%_))
                                   (let ((_%e199418199558%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd199414199552%_))))
                                     (let ((_%hd199417199562%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199418199558%_)))
                                           (_%tl199416199565%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199418199558%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199417199562%_))
                                           (if (let ((__tmp201063
                                                      |gxc[1]#_g201064_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp201063
                                                  _%hd199417199562%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199416199565%_))
                                                   (let ((_%e199421199568%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl199416199565%_))))
                                                     (let ((_%hd199420199572%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199421199568%_)))
                                                           (_%tl199419199575%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199421199568%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199419199575%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199413199555%_))
                       (let ((_%e199424199578%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl199413199555%_))))
                         (let ((_%hd199423199582%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199424199578%_)))
                               (_%tl199422199585%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199424199578%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd199423199582%_))
                               (let ((_%e199425199588%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199423199582%_))))
                                 (if (equal? _%e199425199588%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl199422199585%_))
                                         (let ((_%e199428199592%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl199422199585%_))))
                                           (let ((_%hd199427199596%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199428199592%_)))
                                                 (_%tl199426199599%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199428199592%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd199427199596%_))
                                                 (let ((_%e199431199602%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd199427199596%_))))
                                                   (let ((_%hd199430199606%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199431199602%_)))
                                                         (_%tl199429199609%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199431199602%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd199430199606%_))
                                                         (if (let ((__tmp201065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g201066_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp201065 _%hd199430199606%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl199429199609%_))
                         (let ((_%e199434199612%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl199429199609%_))))
                           (let ((_%hd199433199616%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e199434199612%_)))
                                 (_%tl199432199619%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e199434199612%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl199432199619%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199426199599%_))
                                     (let ((_%e199437199622%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199426199599%_))))
                                       (let ((_%hd199436199626%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199437199622%_)))
                                             (_%tl199435199629%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199437199622%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd199436199626%_))
                                             (let ((_%e199438199632%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd199436199626%_))))
                                               (if (equal? _%e199438199632%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199435199629%_))
                                                       (let ((_%e199441199636%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199435199629%_))))
                 (let ((_%hd199440199640%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199441199636%_)))
                       (_%tl199439199643%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199441199636%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd199440199640%_))
                       (let ((_%e199444199646%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd199440199640%_))))
                         (let ((_%hd199443199650%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199444199646%_)))
                               (_%tl199442199653%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199444199646%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd199443199650%_))
                               (if (let ((__tmp201067 |gxc[1]#_g201068_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp201067
                                      _%hd199443199650%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl199442199653%_))
                                       (let ((_%e199447199656%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl199442199653%_))))
                                         (let ((_%hd199446199660%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199447199656%_)))
                                               (_%tl199445199663%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199447199656%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl199445199663%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199439199643%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199390199477%_))
                                                       ((lambda (_%L199666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L199668%_
                         _%L199669%_
                         _%L199670%_
                         _%L199671%_)
                  (let ((_%clause199732%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L199671%_ '()))
                                     (cons '#f
                                           (cons 'signature:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L199669%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked199734%_
                         (let () (declare (not safe)) (gx#stx-e _%L199666%_))))
                    (_%loop199345%_
                     _%rest199376%_
                     (let ((_%$e199736%_ _%unchecked199734%_))
                       (if _%$e199736%_ _%$e199736%_ _%unchecked-proc199350%_))
                     (cons _%clause199732%_ _%unchecked-clauses199351%_))))
                _%hd199446199660%_
                _%hd199433199616%_
                _%hd199420199572%_
                _%hd199407199528%_
                _%hd199388199464%_)
               (_%g199380199453%_ _%g199381199457%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199380199453%_
                                                    _%g199381199457%_))
                                               (_%g199380199453%_
                                                _%g199381199457%_))))
                                       (_%g199380199453%_ _%g199381199457%_))
                                   (_%g199380199453%_ _%g199381199457%_))
                               (_%g199380199453%_ _%g199381199457%_))))
                       (_%g199380199453%_ _%g199381199457%_))))
               (_%g199380199453%_ _%g199381199457%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199380199453%_
                                                    _%g199381199457%_)))
                                             (_%g199380199453%_
                                              _%g199381199457%_))))
                                     (_%g199380199453%_ _%g199381199457%_))
                                 (_%g199380199453%_ _%g199381199457%_))))
                         (_%g199380199453%_ _%g199381199457%_))
                     (_%g199380199453%_ _%g199381199457%_))
                 (_%g199380199453%_ _%g199381199457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199380199453%_
                                                  _%g199381199457%_))))
                                         (_%g199380199453%_ _%g199381199457%_))
                                     (_%g199380199453%_ _%g199381199457%_)))
                               (_%g199380199453%_ _%g199381199457%_))))
                       (_%g199380199453%_ _%g199381199457%_))
                   (_%g199380199453%_ _%g199381199457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199380199453%_
                                                    _%g199381199457%_))
                                               (_%g199380199453%_
                                                _%g199381199457%_))
                                           (_%g199380199453%_
                                            _%g199381199457%_))))
                                   (_%g199380199453%_ _%g199381199457%_))))
                           (_%g199380199453%_ _%g199381199457%_))
                       (_%g199380199453%_ _%g199381199457%_)))
                 (_%g199380199453%_ _%g199381199457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199380199453%_
                                                  _%g199381199457%_))
                                             (_%g199380199453%_
                                              _%g199381199457%_))))
                                     (_%g199380199453%_ _%g199381199457%_))
                                 (_%g199380199453%_ _%g199381199457%_))
                             (_%g199380199453%_ _%g199381199457%_))))
                     (_%g199380199453%_ _%g199381199457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199380199453%_
                                                      _%g199381199457%_))
                                                 (_%g199380199453%_
                                                  _%g199381199457%_)))
                                           (_%g199380199453%_
                                            _%g199381199457%_))))
                                   (_%g199380199453%_ _%g199381199457%_))))
                           (_%g199380199453%_ _%g199381199457%_))))
                   (_%g199380199453%_ _%g199381199457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199380199453%_
                                                    _%g199381199457%_)))))
                                       (_%g199379199740%_ _%hd199378%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest199352199360%_))
                                 (let ((_%hd199357199748%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199352199360%_)))
                                       (_%tl199358199751%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199352199360%_))))
                                   (let* ((_%hd199754%_ _%hd199357199748%_)
                                          (_%rest199757%_ _%tl199358199751%_))
                                     (_%K199356199744%_
                                      _%rest199757%_
                                      _%hd199754%_)))
                                 (_%else199354199372%_))))))
                    (begin
                      (let ((_g201060_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201059_)
                                   (##vector-length _g201059_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201060_ 2)))
                            (error "Context expects 2 values" _g201060_)))
                      (let ((_%unchecked-proc199760%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201059_ 0)))
                            (_%unchecked-clauses199762%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201059_ 1))))
                        (if _%unchecked-proc199760%_
                            (let* ((_%g199764199788%_
                                    (lambda (_%g199765199784%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199765199784%_))))
                                   (_%g199763199875%_
                                    (lambda (_%g199765199792%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g199765199792%_))
                                          (let ((_%e199770199795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g199765199792%_))))
                                            (let ((_%hd199769199799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199770199795%_)))
                                                  (_%tl199768199802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199770199795%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199768199802%_))
                                                  (let ((_%e199773199805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199768199802%_))))
                                                    (let ((_%hd199772199809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199773199805%_)))
                                                          (_%tl199771199812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199773199805%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd199772199809%_))
                                                          (let ((_g201069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd199772199809%_ '0))))
                    (begin
                      (let ((_g201070_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201069_)
                                   (##vector-length _g201069_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201070_ 2)))
                            (error "Context expects 2 values" _g201070_)))
                      (let ((_%target199774199815%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201069_ 0)))
                            (_%tl199776199818%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201069_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199776199818%_))
                            (letrec ((_%loop199777199821%_
                                      (lambda (_%hd199775199825%_
                                               _%clause199781199828%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199775199825%_))
                                            (let ((_%e199778199831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199775199825%_))))
                                              (let ((_%lp-hd199779199835%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199778199831%_)))
                                                    (_%lp-tl199780199838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199778199831%_))))
                                                (_%loop199777199821%_
                                                 _%lp-tl199780199838%_
                                                 (cons _%lp-hd199779199835%_
                                                       _%clause199781199828%_))))
                                            (let ((_%clause199782199841%_
                                                   (reverse _%clause199781199828%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199771199812%_))
                                                  ((lambda (_%L199845%_
                                                            _%L199847%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199847%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-case-lambda))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '@list))
                                                   (let ((__tmp201071
                                                          (lambda (_%g199866199869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g199867199872%_)
                    (cons _%g199866199869%_ _%g199867199872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp201071
                                                      '()
                                                      _%L199845%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause199782199841%_
                                                   _%hd199769199799%_)
                                                  (_%g199764199788%_
                                                   _%g199765199792%_)))))))
                              (_%loop199777199821%_
                               _%target199774199815%_
                               '()))
                            (_%g199764199788%_ _%g199765199792%_)))))
                  (_%g199764199788%_ _%g199765199792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g199764199788%_
                                                   _%g199765199792%_))))
                                          (_%g199764199788%_
                                           _%g199765199792%_)))))
                              (_%g199763199875%_
                               (list _%unchecked-proc199760%_
                                     _%unchecked-clauses199762%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g199284199295%_))))
                                          (_%g199282199879%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L199143%_
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0
                              '#f
                              'make-!primitive-case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L199264%_
                                            _%L199266%_))
                                         (let ((__tmp201072
                                                (lambda (_%g199882199886%_
                                                         _%g199883199889%_
                                                         _%g199884199891%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g199883199889%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g199882199886%_ '())))))
                _%g199884199891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp201072
                                            '()
                                            _%L199264%_
                                            _%L199266%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig199190199258%_
                                    _%arity199191199261%_))))))
                   (_%loop199184199216%_ _%target199181199210%_ '() '()))
                 (_%g199177199203%_ _%g199178199207%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199177199203%_
                                                _%g199178199207%_)))))
                                   (_%g199176199894%_ _%signatures199174%_))
                                 (_%g199060199084%_ _%g199061199088%_)))
                           _%case-signature199078199137%_
                           _%hd199068199105%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199073199117%_
                                                   _%target199070199111%_
                                                   '()))
                                                (_%g199060199084%_
                                                 _%g199061199088%_)))))
                                      (_%g199060199084%_ _%g199061199088%_))))
                              (_%g199060199084%_ _%g199061199088%_))))
                      (_%g199060199084%_ _%g199061199088%_)))))
          (_%g199059199898%_ _%stx199057%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx199906%_)
        (let* ((_%__stx200888200889%_ _%$stx199906%_)
               (_%g199912199972%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200888200889%_)))))
          (let ((_%__kont200891200892%_
                 (lambda (_%L200194%_ _%L200196%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200196%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L200196%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200194%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont200893200894%_
                 (lambda (_%L200119%_ _%L200121%_ _%L200122%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200122%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L200122%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200121%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200119%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont200895200896%_
                 (lambda (_%L200033%_ _%L200035%_ _%L200036%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200036%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L200036%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200035%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200033%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200888200889%_))
                (let ((_%e199918200150%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200888200889%_))))
                  (let ((_%tl199916200157%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199918200150%_)))
                        (_%hd199917200154%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199918200150%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199916200157%_))
                        (let ((_%e199921200160%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199916200157%_))))
                          (let ((_%tl199919200167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199921200160%_)))
                                (_%hd199920200164%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199921200160%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd199920200164%_))
                                (let ((_%e199922200170%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd199920200164%_))))
                                  (if (equal? _%e199922200170%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199919200167%_))
                                          (let ((_%e199925200174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl199919200167%_))))
                                            (let ((_%tl199923200181%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199925200174%_)))
                                                  (_%hd199924200178%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199925200174%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199923200181%_))
                                                  (let ((_%e199928200184%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199923200181%_))))
                                                    (let ((_%tl199926200191%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199928200184%_)))
                                                          (_%hd199927200188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199928200184%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199926200191%_))
                                                          (_%__kont200891200892%_
                                                           _%hd199927200188%_
                                                           _%hd199924200178%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199912199972%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199912199972%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199912199972%_)))
                                      (if (equal? _%e199922200170%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199919200167%_))
                                              (let ((_%e199941200089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199919200167%_))))
                                                (let ((_%tl199939200096%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199941200089%_)))
                                                      (_%hd199940200093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199941200089%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199939200096%_))
                                                      (let ((_%e199944200099%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl199939200096%_))))
                (let ((_%tl199942200106%_
                       (let () (declare (not safe)) (##cdr _%e199944200099%_)))
                      (_%hd199943200103%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199944200099%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199942200106%_))
                      (let ((_%e199947200109%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199942200106%_))))
                        (let ((_%tl199945200116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199947200109%_)))
                              (_%hd199946200113%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199947200109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199945200116%_))
                              (_%__kont200893200894%_
                               _%hd199946200113%_
                               _%hd199943200103%_
                               _%hd199940200093%_)
                              (let ()
                                (declare (not safe))
                                (_%g199912199972%_)))))
                      (let () (declare (not safe)) (_%g199912199972%_)))))
              (let () (declare (not safe)) (_%g199912199972%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199912199972%_)))
                                          (if (equal? _%e199922200170%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199919200167%_))
                                                  (let ((_%e199960200003%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199919200167%_))))
                                                    (let ((_%tl199958200010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199960200003%_)))
                                                          (_%hd199959200007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199960200003%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199958200010%_))
                                                          (let ((_%e199963200013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199958200010%_))))
                    (let ((_%tl199961200020%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199963200013%_)))
                          (_%hd199962200017%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199963200013%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199961200020%_))
                          (let ((_%e199966200023%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199961200020%_))))
                            (let ((_%tl199964200030%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199966200023%_)))
                                  (_%hd199965200027%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199966200023%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199964200030%_))
                                  (_%__kont200895200896%_
                                   _%hd199965200027%_
                                   _%hd199962200017%_
                                   _%hd199959200007%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199912199972%_)))))
                          (let () (declare (not safe)) (_%g199912199972%_)))))
                  (let () (declare (not safe)) (_%g199912199972%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199912199972%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199912199972%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g199912199972%_)))))
                        (let () (declare (not safe)) (_%g199912199972%_)))))
                (let () (declare (not safe)) (_%g199912199972%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx200218%_)
        (let* ((_%g200222200242%_
                (lambda (_%g200223200238%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200223200238%_))))
               (_%g200221200313%_
                (lambda (_%g200223200246%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200223200246%_))
                      (let ((_%e200227200249%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200223200246%_))))
                        (let ((_%hd200226200253%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200227200249%_)))
                              (_%tl200225200256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200227200249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200225200256%_))
                              (let ((_g201073_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200225200256%_
                                        '0))))
                                (begin
                                  (let ((_g201074_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201073_)
                                               (##vector-length _g201073_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201074_ 2)))
                                        (error "Context expects 2 values"
                                               _g201074_)))
                                  (let ((_%target200228200259%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201073_ 0)))
                                        (_%tl200230200262%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201073_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200230200262%_))
                                        (letrec ((_%loop200231200265%_
                                                  (lambda (_%hd200229200269%_
                                                           _%decl200235200272%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200229200269%_))
                                                        (let ((_%e200232200275%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200229200269%_))))
                  (let ((_%lp-hd200233200279%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200232200275%_)))
                        (_%lp-tl200234200282%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200232200275%_))))
                    (_%loop200231200265%_
                     _%lp-tl200234200282%_
                     (cons _%lp-hd200233200279%_ _%decl200235200272%_))))
                (let ((_%decl200236200285%_ (reverse _%decl200235200272%_)))
                  ((lambda (_%L200289%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp201075
                                  (lambda (_%g200304200307%_ _%g200305200310%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g200304200307%_)
                                          _%g200305200310%_))))
                             (declare (not safe))
                             (__foldr1 __tmp201075 '() _%L200289%_))))
                   _%decl200236200285%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200231200265%_
                                           _%target200228200259%_
                                           '()))
                                        (_%g200222200242%_
                                         _%g200223200246%_)))))
                              (_%g200222200242%_ _%g200223200246%_))))
                      (_%g200222200242%_ _%g200223200246%_)))))
          (_%g200221200313%_ _%$stx200218%_))))))
