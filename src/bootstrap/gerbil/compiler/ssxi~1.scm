(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g270167_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270174_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270176_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270178_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270180_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270182_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270194_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270196_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270198_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270200_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270202_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx263625%_)
        (let* ((_%$%g263629263647%_
                (lambda (_%$%g263630263643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g263630263643%_))))
               (_%$%g263628263702%_
                (lambda (_%$%g263630263651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g263630263651%_))
                      (let ((_%$%e263633263654%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g263630263651%_))))
                        (let ((_%$%hd263634263658%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e263633263654%_)))
                              (_%$%tl263635263661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e263633263654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl263635263661%_))
                              (let ((_%$%e263636263664%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl263635263661%_))))
                                (let ((_%$%hd263637263668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e263636263664%_)))
                                      (_%$%tl263638263671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e263636263664%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl263638263671%_))
                                      (let ((_%$%e263639263674%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl263638263671%_))))
                                        (let ((_%$%hd263640263678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263639263674%_)))
                                              (_%$%tl263641263681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263639263674%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl263641263681%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd263637263668%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd263637263668%_ '()))
                      (cons _%$%hd263640263678%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g263629263647%_
                                                   _%$%g263630263651%_))
                                              (_%$%g263629263647%_
                                               _%$%g263630263651%_))))
                                      (_%$%g263629263647%_
                                       _%$%g263630263651%_))))
                              (_%$%g263629263647%_ _%$%g263630263651%_))))
                      (_%$%g263629263647%_ _%$%g263630263651%_)))))
          (_%$%g263628263702%_ _%$stx263625%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx263706%_)
        (let* ((_%$%g263710263728%_
                (lambda (_%$%g263711263724%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g263711263724%_))))
               (_%$%g263709263783%_
                (lambda (_%$%g263711263732%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g263711263732%_))
                      (let ((_%$%e263714263735%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g263711263732%_))))
                        (let ((_%$%hd263715263739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e263714263735%_)))
                              (_%$%tl263716263742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e263714263735%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl263716263742%_))
                              (let ((_%$%e263717263745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl263716263742%_))))
                                (let ((_%$%hd263718263749%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e263717263745%_)))
                                      (_%$%tl263719263752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e263717263745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl263719263752%_))
                                      (let ((_%$%e263720263755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl263719263752%_))))
                                        (let ((_%$%hd263721263759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263720263755%_)))
                                              (_%$%tl263722263762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263720263755%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl263722263762%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd263718263749%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd263718263749%_ '()))
                      (cons _%$%hd263721263759%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g263710263728%_
                                                   _%$%g263711263732%_))
                                              (_%$%g263710263728%_
                                               _%$%g263711263732%_))))
                                      (_%$%g263710263728%_
                                       _%$%g263711263732%_))))
                              (_%$%g263710263728%_ _%$%g263711263732%_))))
                      (_%$%g263710263728%_ _%$%g263711263732%_)))))
          (_%$%g263709263783%_ _%$stx263706%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx263787%_)
        (let* ((_%$%g263791263820%_
                (lambda (_%$%g263792263816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g263792263816%_))))
               (_%$%g263790263916%_
                (lambda (_%$%g263792263824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g263792263824%_))
                      (let ((_%$%e263795263827%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g263792263824%_))))
                        (let ((_%$%hd263796263831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e263795263827%_)))
                              (_%$%tl263797263834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e263795263827%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl263797263834%_))
                              (let ((_g270145_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl263797263834%_
                                        '0))))
                                (begin
                                  (let ((_g270146_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g270145_)
                                               (##values-length _g270145_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g270146_ 2)))
                                        (error "Context expects 2 values"
                                               _g270146_)))
                                  (let ((_%$%target263798263837%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270145_ 0)))
                                        (_%$%tl263800263840%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270145_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl263800263840%_))
                                        (letrec ((_%$%loop263801263843%_
                                                  (lambda (_%$%hd263799263847%_
                                                           _%$%type263805263850%_
                                                           _%$%symbol263806263851%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd263799263847%_))
                                                        (let ((_%$%e263802263853%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd263799263847%_))))
                  (let ((_%$%lp-hd263803263857%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e263802263853%_)))
                        (_%$%lp-tl263804263860%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e263802263853%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd263803263857%_))
                        (let ((_%$%e263809263863%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd263803263857%_))))
                          (let ((_%$%hd263810263867%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e263809263863%_)))
                                (_%$%tl263811263870%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e263809263863%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl263811263870%_))
                                (let ((_%$%e263812263873%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl263811263870%_))))
                                  (let ((_%$%hd263813263877%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e263812263873%_)))
                                        (_%$%tl263814263880%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e263812263873%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl263814263880%_))
                                        (_%$%loop263801263843%_
                                         _%$%lp-tl263804263860%_
                                         (cons _%$%hd263813263877%_
                                               _%$%type263805263850%_)
                                         (cons _%$%hd263810263867%_
                                               _%$%symbol263806263851%_))
                                        (_%$%g263791263820%_
                                         _%$%g263792263824%_))))
                                (_%$%g263791263820%_ _%$%g263792263824%_))))
                        (_%$%g263791263820%_ _%$%g263792263824%_))))
                (let ((_%$%type263807263883%_ (reverse _%$%type263805263850%_))
                      (_%$%symbol263808263885%_
                       (reverse _%$%symbol263806263851%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type263807263883%_
                             _%$%symbol263808263885%_))
                          (let ((__tmp270147
                                 (lambda (_%$%g263904263908%_
                                          _%$%g263905263911%_
                                          _%$%g263906263913%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g263905263911%_
                                                     (cons _%$%g263904263908%_
                                                           '())))
                                         _%$%g263906263913%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp270147
                             '()
                             _%$%type263807263883%_
                             _%$%symbol263808263885%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop263801263843%_
                                           _%$%target263798263837%_
                                           '()
                                           '()))
                                        (_%$%g263791263820%_
                                         _%$%g263792263824%_)))))
                              (_%$%g263791263820%_ _%$%g263792263824%_))))
                      (_%$%g263791263820%_ _%$%g263792263824%_)))))
          (_%$%g263790263916%_ _%$stx263787%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx263921%_)
        (let* ((_%__stx269456269457%_ _%$stx263921%_)
               (_%$%g263926263968%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269456269457%_)))))
          (let ((_%__kont269459269460%_
                 (lambda (_%$%g263928264096%_
                          _%$%g263929264098%_
                          _%$%g263930264099%_
                          _%$%g263931264100%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g263931264100%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g263930264099%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g263929264098%_
                                                       '()))
                                           (cons _%$%g263928264096%_ '())))))))
                (_%__kont269461269462%_
                 (lambda (_%$%g263947264015%_
                          _%$%g263948264017%_
                          _%$%g263949264018%_
                          _%$%g263950264019%_)
                   (cons _%$%g263950264019%_
                         (cons _%$%g263949264018%_
                               (cons _%$%g263948264017%_
                                     (cons _%$%g263947264015%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match269495269496%_
                   (lambda (_%$%e263932264046%_
                            _%$%hd263933264050%_
                            _%$%tl263934264053%_
                            _%$%e263935264056%_
                            _%$%hd263936264060%_
                            _%$%tl263937264063%_
                            _%$%e263938264066%_
                            _%$%hd263939264070%_
                            _%$%tl263940264073%_
                            _%$%e263941264076%_
                            _%$%hd263942264080%_
                            _%$%tl263943264083%_
                            _%$%e263944264086%_
                            _%$%hd263945264090%_
                            _%$%tl263946264093%_)
                     (let ((_%$%g263928264096%_ _%$%hd263945264090%_)
                           (_%$%g263929264098%_ _%$%hd263942264080%_)
                           (_%$%g263930264099%_ _%$%hd263939264070%_)
                           (_%$%g263931264100%_ _%$%hd263936264060%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g263931264100%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g263930264099%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g263929264098%_)))
                           (_%__kont269459269460%_
                            _%$%g263928264096%_
                            _%$%g263929264098%_
                            _%$%g263930264099%_
                            _%$%g263931264100%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g263926263968%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269456269457%_))
                  (let ((_%$%e263932264046%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx269456269457%_))))
                    (let ((_%$%tl263934264053%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e263932264046%_)))
                          (_%$%hd263933264050%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e263932264046%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl263934264053%_))
                          (let ((_%$%e263935264056%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl263934264053%_))))
                            (let ((_%$%tl263937264063%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e263935264056%_)))
                                  (_%$%hd263936264060%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e263935264056%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl263937264063%_))
                                  (let ((_%$%e263938264066%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl263937264063%_))))
                                    (let ((_%$%tl263940264073%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e263938264066%_)))
                                          (_%$%hd263939264070%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e263938264066%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl263940264073%_))
                                          (let ((_%$%e263941264076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl263940264073%_))))
                                            (let ((_%$%tl263943264083%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e263941264076%_)))
                                                  (_%$%hd263942264080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e263941264076%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl263943264083%_))
                                                  (let ((_%$%e263944264086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl263943264083%_))))
                                                    (let ((_%$%tl263946264093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e263944264086%_)))
                                                          (_%$%hd263945264090%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e263944264086%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl263946264093%_))
                                                          (_%__match269495269496%_
                                                           _%$%e263932264046%_
                                                           _%$%hd263933264050%_
                                                           _%$%tl263934264053%_
                                                           _%$%e263935264056%_
                                                           _%$%hd263936264060%_
                                                           _%$%tl263937264063%_
                                                           _%$%e263938264066%_
                                                           _%$%hd263939264070%_
                                                           _%$%tl263940264073%_
                                                           _%$%e263941264076%_
                                                           _%$%hd263942264080%_
                                                           _%$%tl263943264083%_
                                                           _%$%e263944264086%_
                                                           _%$%hd263945264090%_
                                                           _%$%tl263946264093%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g263926263968%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl263943264083%_))
                                                      (_%__kont269461269462%_
                                                       _%$%hd263942264080%_
                                                       _%$%hd263939264070%_
                                                       _%$%hd263936264060%_
                                                       _%$%hd263933264050%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g263926263968%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g263926263968%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g263926263968%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g263926263968%_)))))
                  (let () (declare (not safe)) (_%$%g263926263968%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx264125%_)
        (let* ((_%$%g264129264164%_
                (lambda (_%$%g264130264160%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264130264160%_))))
               (_%$%g264128264277%_
                (lambda (_%$%g264130264168%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264130264168%_))
                      (let ((_%$%e264134264171%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g264130264168%_))))
                        (let ((_%$%hd264135264175%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264134264171%_)))
                              (_%$%tl264136264178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264134264171%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl264136264178%_))
                              (let ((_g270148_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl264136264178%_
                                        '0))))
                                (begin
                                  (let ((_g270149_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g270148_)
                                               (##values-length _g270148_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g270149_ 2)))
                                        (error "Context expects 2 values"
                                               _g270149_)))
                                  (let ((_%$%target264137264181%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270148_ 0)))
                                        (_%$%tl264139264184%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270148_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl264139264184%_))
                                        (letrec ((_%$%loop264140264187%_
                                                  (lambda (_%$%hd264138264191%_
                                                           _%$%symbol264144264194%_
                                                           _%$%method264145264195%_
                                                           _%$%type-t264146264196%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd264138264191%_))
                                                        (let ((_%$%e264141264198%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd264138264191%_))))
                  (let ((_%$%lp-hd264142264202%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e264141264198%_)))
                        (_%$%lp-tl264143264205%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e264141264198%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd264142264202%_))
                        (let ((_%$%e264150264208%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd264142264202%_))))
                          (let ((_%$%hd264151264212%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e264150264208%_)))
                                (_%$%tl264152264215%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e264150264208%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl264152264215%_))
                                (let ((_%$%e264153264218%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl264152264215%_))))
                                  (let ((_%$%hd264154264222%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e264153264218%_)))
                                        (_%$%tl264155264225%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e264153264218%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl264155264225%_))
                                        (let ((_%$%e264156264228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl264155264225%_))))
                                          (let ((_%$%hd264157264232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e264156264228%_)))
                                                (_%$%tl264158264235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e264156264228%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl264158264235%_))
                                                (_%$%loop264140264187%_
                                                 _%$%lp-tl264143264205%_
                                                 (cons _%$%hd264157264232%_
                                                       _%$%symbol264144264194%_)
                                                 (cons _%$%hd264154264222%_
                                                       _%$%method264145264195%_)
                                                 (cons _%$%hd264151264212%_
                                                       _%$%type-t264146264196%_))
                                                (_%$%g264129264164%_
                                                 _%$%g264130264168%_))))
                                        (_%$%g264129264164%_
                                         _%$%g264130264168%_))))
                                (_%$%g264129264164%_ _%$%g264130264168%_))))
                        (_%$%g264129264164%_ _%$%g264130264168%_))))
                (let ((_%$%symbol264147264238%_
                       (reverse _%$%symbol264144264194%_))
                      (_%$%method264148264240%_
                       (reverse _%$%method264145264195%_))
                      (_%$%type-t264149264241%_
                       (reverse _%$%type-t264146264196%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol264147264238%_
                             _%$%method264148264240%_
                             _%$%type-t264149264241%_))
                          (let ((__tmp270150
                                 (lambda (_%$%g264262264267%_
                                          _%$%g264263264270%_
                                          _%$%g264264264272%_
                                          _%$%g264265264274%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g264264264272%_
                                                     (cons _%$%g264263264270%_
                                                           (cons _%$%g264262264267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g264265264274%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp270150
                             '()
                             _%$%symbol264147264238%_
                             _%$%method264148264240%_
                             _%$%type-t264149264241%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop264140264187%_
                                           _%$%target264137264181%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g264129264164%_
                                         _%$%g264130264168%_)))))
                              (_%$%g264129264164%_ _%$%g264130264168%_))))
                      (_%$%g264129264164%_ _%$%g264130264168%_)))))
          (_%$%g264128264277%_ _%$stx264125%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx264282%_)
        (let* ((_%$%g264286264319%_
                (lambda (_%$%g264287264315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264287264315%_))))
               (_%$%g264285264429%_
                (lambda (_%$%g264287264323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264287264323%_))
                      (let ((_%$%e264291264326%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g264287264323%_))))
                        (let ((_%$%hd264292264330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264291264326%_)))
                              (_%$%tl264293264333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264291264326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264293264333%_))
                              (let ((_%$%e264294264336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl264293264333%_))))
                                (let ((_%$%hd264295264340%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264294264336%_)))
                                      (_%$%tl264296264343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264294264336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl264296264343%_))
                                      (let ((_g270151_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl264296264343%_
                                                '0))))
                                        (begin
                                          (let ((_g270152_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g270151_)
                                                       (##values-length
                                                        _g270151_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g270152_ 2)))
                                                (error "Context expects 2 values"
                                                       _g270152_)))
                                          (let ((_%$%target264297264346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g270151_ 0)))
                                                (_%$%tl264299264349%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g270151_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl264299264349%_))
                                                (letrec ((_%$%loop264300264352%_
                                                          (lambda (_%$%hd264298264356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol264304264359%_
                           _%$%method264305264360%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd264298264356%_))
                        (let ((_%$%e264301264362%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd264298264356%_))))
                          (let ((_%$%lp-hd264302264366%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e264301264362%_)))
                                (_%$%lp-tl264303264369%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e264301264362%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd264302264366%_))
                                (let ((_%$%e264308264372%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd264302264366%_))))
                                  (let ((_%$%hd264309264376%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e264308264372%_)))
                                        (_%$%tl264310264379%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e264308264372%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl264310264379%_))
                                        (let ((_%$%e264311264382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl264310264379%_))))
                                          (let ((_%$%hd264312264386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e264311264382%_)))
                                                (_%$%tl264313264389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e264311264382%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl264313264389%_))
                                                (_%$%loop264300264352%_
                                                 _%$%lp-tl264303264369%_
                                                 (cons _%$%hd264312264386%_
                                                       _%$%symbol264304264359%_)
                                                 (cons _%$%hd264309264376%_
                                                       _%$%method264305264360%_))
                                                (_%$%g264286264319%_
                                                 _%$%g264287264323%_))))
                                        (_%$%g264286264319%_
                                         _%$%g264287264323%_))))
                                (_%$%g264286264319%_ _%$%g264287264323%_))))
                        (let ((_%$%symbol264306264392%_
                               (reverse _%$%symbol264304264359%_))
                              (_%$%method264307264394%_
                               (reverse _%$%method264305264360%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol264306264392%_
                                     _%$%method264307264394%_))
                                  (let ((__tmp270153
                                         (lambda (_%$%g264417264421%_
                                                  _%$%g264418264424%_
                                                  _%$%g264419264426%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd264295264340%_
                                                             (cons _%$%g264418264424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g264417264421%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g264419264426%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp270153
                                     '()
                                     _%$%symbol264306264392%_
                                     _%$%method264307264394%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop264300264352%_
                                                   _%$%target264297264346%_
                                                   '()
                                                   '()))
                                                (_%$%g264286264319%_
                                                 _%$%g264287264323%_)))))
                                      (_%$%g264286264319%_
                                       _%$%g264287264323%_))))
                              (_%$%g264286264319%_ _%$%g264287264323%_))))
                      (_%$%g264286264319%_ _%$%g264287264323%_)))))
          (_%$%g264285264429%_ _%$stx264282%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx264434%_)
        (let* ((_%$%g264438264452%_
                (lambda (_%$%g264439264448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264439264448%_))))
               (_%$%g264437264493%_
                (lambda (_%$%g264439264456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264439264456%_))
                      (let ((_%$%e264441264459%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g264439264456%_))))
                        (let ((_%$%hd264442264463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264441264459%_)))
                              (_%$%tl264443264466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264441264459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264443264466%_))
                              (let ((_%$%e264444264469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl264443264466%_))))
                                (let ((_%$%hd264445264473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264444264469%_)))
                                      (_%$%tl264446264476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264444264469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl264446264476%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!alias))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd264445264473%_
                                                              '()))
                                                  '()))
                                      (_%$%g264438264452%_
                                       _%$%g264439264456%_))))
                              (_%$%g264438264452%_ _%$%g264439264456%_))))
                      (_%$%g264438264452%_ _%$%g264439264456%_)))))
          (_%$%g264437264493%_ _%$stx264434%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx264497%_)
        (let* ((_%$%g264501264555%_
                (lambda (_%$%g264502264551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264502264551%_))))
               (_%$%g264500264736%_
                (lambda (_%$%g264502264559%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264502264559%_))
                      (let ((_%$%e264514264562%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g264502264559%_))))
                        (let ((_%$%hd264515264566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264514264562%_)))
                              (_%$%tl264516264569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264514264562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264516264569%_))
                              (let ((_%$%e264517264572%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl264516264569%_))))
                                (let ((_%$%hd264518264576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264517264572%_)))
                                      (_%$%tl264519264579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264517264572%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl264519264579%_))
                                      (let ((_%$%e264520264582%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl264519264579%_))))
                                        (let ((_%$%hd264521264586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e264520264582%_)))
                                              (_%$%tl264522264589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e264520264582%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl264522264589%_))
                                              (let ((_%$%e264523264592%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl264522264589%_))))
                                                (let ((_%$%hd264524264596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e264523264592%_)))
                                                      (_%$%tl264525264599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e264523264592%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl264525264599%_))
                                                      (let ((_%$%e264526264602%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl264525264599%_))))
                (let ((_%$%hd264527264606%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e264526264602%_)))
                      (_%$%tl264528264609%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e264526264602%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl264528264609%_))
                      (let ((_%$%e264529264612%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl264528264609%_))))
                        (let ((_%$%hd264530264616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264529264612%_)))
                              (_%$%tl264531264619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264529264612%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264531264619%_))
                              (let ((_%$%e264532264622%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl264531264619%_))))
                                (let ((_%$%hd264533264626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264532264622%_)))
                                      (_%$%tl264534264629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264532264622%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl264534264629%_))
                                      (let ((_%$%e264535264632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl264534264629%_))))
                                        (let ((_%$%hd264536264636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e264535264632%_)))
                                              (_%$%tl264537264639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e264535264632%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl264537264639%_))
                                              (let ((_%$%e264538264642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl264537264639%_))))
                                                (let ((_%$%hd264539264646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e264538264642%_)))
                                                      (_%$%tl264540264649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e264538264642%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl264540264649%_))
                                                      (let ((_%$%e264541264652%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl264540264649%_))))
                (let ((_%$%hd264542264656%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e264541264652%_)))
                      (_%$%tl264543264659%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e264541264652%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl264543264659%_))
                      (let ((_%$%e264544264662%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl264543264659%_))))
                        (let ((_%$%hd264545264666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264544264662%_)))
                              (_%$%tl264546264669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264544264662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264546264669%_))
                              (let ((_%$%e264547264672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl264546264669%_))))
                                (let ((_%$%hd264548264676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264547264672%_)))
                                      (_%$%tl264549264679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264547264672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl264549264679%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!class))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd264518264576%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd264521264586%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd264524264596%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd264527264606%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd264530264616%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd264533264626%_ '()))
                                        (cons _%$%hd264536264636%_
                                              (cons _%$%hd264539264646%_
                                                    (cons _%$%hd264542264656%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd264545264666%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd264548264676%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g264501264555%_
                                       _%$%g264502264559%_))))
                              (_%$%g264501264555%_ _%$%g264502264559%_))))
                      (_%$%g264501264555%_ _%$%g264502264559%_))))
              (_%$%g264501264555%_ _%$%g264502264559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g264501264555%_
                                               _%$%g264502264559%_))))
                                      (_%$%g264501264555%_
                                       _%$%g264502264559%_))))
                              (_%$%g264501264555%_ _%$%g264502264559%_))))
                      (_%$%g264501264555%_ _%$%g264502264559%_))))
              (_%$%g264501264555%_ _%$%g264502264559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g264501264555%_
                                               _%$%g264502264559%_))))
                                      (_%$%g264501264555%_
                                       _%$%g264502264559%_))))
                              (_%$%g264501264555%_ _%$%g264502264559%_))))
                      (_%$%g264501264555%_ _%$%g264502264559%_)))))
          (_%$%g264500264736%_ _%$stx264497%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx264740%_)
        (let* ((_%$%g264744264758%_
                (lambda (_%$%g264745264754%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264745264754%_))))
               (_%$%g264743264799%_
                (lambda (_%$%g264745264762%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264745264762%_))
                      (let ((_%$%e264747264765%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g264745264762%_))))
                        (let ((_%$%hd264748264769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264747264765%_)))
                              (_%$%tl264749264772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264747264765%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264749264772%_))
                              (let ((_%$%e264750264775%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl264749264772%_))))
                                (let ((_%$%hd264751264779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264750264775%_)))
                                      (_%$%tl264752264782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264750264775%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl264752264782%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd264751264779%_
                                                              '()))
                                                  '()))
                                      (_%$%g264744264758%_
                                       _%$%g264745264762%_))))
                              (_%$%g264744264758%_ _%$%g264745264762%_))))
                      (_%$%g264744264758%_ _%$%g264745264762%_)))))
          (_%$%g264743264799%_ _%$stx264740%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx264803%_)
        (let* ((_%$%g264807264821%_
                (lambda (_%$%g264808264817%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264808264817%_))))
               (_%$%g264806264862%_
                (lambda (_%$%g264808264825%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264808264825%_))
                      (let ((_%$%e264810264828%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g264808264825%_))))
                        (let ((_%$%hd264811264832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264810264828%_)))
                              (_%$%tl264812264835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264810264828%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264812264835%_))
                              (let ((_%$%e264813264838%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl264812264835%_))))
                                (let ((_%$%hd264814264842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264813264838%_)))
                                      (_%$%tl264815264845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264813264838%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl264815264845%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!constructor))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd264814264842%_
                                                              '()))
                                                  '()))
                                      (_%$%g264807264821%_
                                       _%$%g264808264825%_))))
                              (_%$%g264807264821%_ _%$%g264808264825%_))))
                      (_%$%g264807264821%_ _%$%g264808264825%_)))))
          (_%$%g264806264862%_ _%$stx264803%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx264866%_)
        (let* ((_%$%g264870264892%_
                (lambda (_%$%g264871264888%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264871264888%_))))
               (_%$%g264869264961%_
                (lambda (_%$%g264871264896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264871264896%_))
                      (let ((_%$%e264875264899%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g264871264896%_))))
                        (let ((_%$%hd264876264903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264875264899%_)))
                              (_%$%tl264877264906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264875264899%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264877264906%_))
                              (let ((_%$%e264878264909%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl264877264906%_))))
                                (let ((_%$%hd264879264913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264878264909%_)))
                                      (_%$%tl264880264916%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264878264909%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl264880264916%_))
                                      (let ((_%$%e264881264919%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl264880264916%_))))
                                        (let ((_%$%hd264882264923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e264881264919%_)))
                                              (_%$%tl264883264926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e264881264919%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl264883264926%_))
                                              (let ((_%$%e264884264929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl264883264926%_))))
                                                (let ((_%$%hd264885264933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e264884264929%_)))
                                                      (_%$%tl264886264936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e264884264929%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl264886264936%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!accessor))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd264879264913%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd264882264923%_ '()))
                                (cons _%$%hd264885264933%_ '()))))
              (_%$%g264870264892%_ _%$%g264871264896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g264870264892%_
                                               _%$%g264871264896%_))))
                                      (_%$%g264870264892%_
                                       _%$%g264871264896%_))))
                              (_%$%g264870264892%_ _%$%g264871264896%_))))
                      (_%$%g264870264892%_ _%$%g264871264896%_)))))
          (_%$%g264869264961%_ _%$stx264866%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx264965%_)
        (let* ((_%$%g264969264991%_
                (lambda (_%$%g264970264987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264970264987%_))))
               (_%$%g264968265060%_
                (lambda (_%$%g264970264995%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264970264995%_))
                      (let ((_%$%e264974264998%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g264970264995%_))))
                        (let ((_%$%hd264975265002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264974264998%_)))
                              (_%$%tl264976265005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264974264998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264976265005%_))
                              (let ((_%$%e264977265008%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl264976265005%_))))
                                (let ((_%$%hd264978265012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264977265008%_)))
                                      (_%$%tl264979265015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264977265008%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl264979265015%_))
                                      (let ((_%$%e264980265018%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl264979265015%_))))
                                        (let ((_%$%hd264981265022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e264980265018%_)))
                                              (_%$%tl264982265025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e264980265018%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl264982265025%_))
                                              (let ((_%$%e264983265028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl264982265025%_))))
                                                (let ((_%$%hd264984265032%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e264983265028%_)))
                                                      (_%$%tl264985265035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e264983265028%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl264985265035%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!mutator))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd264978265012%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd264981265022%_ '()))
                                (cons _%$%hd264984265032%_ '()))))
              (_%$%g264969264991%_ _%$%g264970264995%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g264969264991%_
                                               _%$%g264970264995%_))))
                                      (_%$%g264969264991%_
                                       _%$%g264970264995%_))))
                              (_%$%g264969264991%_ _%$%g264970264995%_))))
                      (_%$%g264969264991%_ _%$%g264970264995%_)))))
          (_%$%g264968265060%_ _%$stx264965%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx265064%_)
        (let* ((_%$%g265068265082%_
                (lambda (_%$%g265069265078%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265069265078%_))))
               (_%$%g265067265123%_
                (lambda (_%$%g265069265086%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265069265086%_))
                      (let ((_%$%e265071265089%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g265069265086%_))))
                        (let ((_%$%hd265072265093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265071265089%_)))
                              (_%$%tl265073265096%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265071265089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl265073265096%_))
                              (let ((_%$%e265074265099%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl265073265096%_))))
                                (let ((_%$%hd265075265103%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e265074265099%_)))
                                      (_%$%tl265076265106%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e265074265099%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl265076265106%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!primitive-predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd265075265103%_
                                                              '()))
                                                  '()))
                                      (_%$%g265068265082%_
                                       _%$%g265069265086%_))))
                              (_%$%g265068265082%_ _%$%g265069265086%_))))
                      (_%$%g265068265082%_ _%$%g265069265086%_)))))
          (_%$%g265067265123%_ _%$stx265064%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx265127%_)
        (let* ((_%$%g265131265149%_
                (lambda (_%$%g265132265145%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265132265145%_))))
               (_%$%g265130265204%_
                (lambda (_%$%g265132265153%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265132265153%_))
                      (let ((_%$%e265135265156%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g265132265153%_))))
                        (let ((_%$%hd265136265160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265135265156%_)))
                              (_%$%tl265137265163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265135265156%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl265137265163%_))
                              (let ((_%$%e265138265166%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl265137265163%_))))
                                (let ((_%$%hd265139265170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e265138265166%_)))
                                      (_%$%tl265140265173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e265138265166%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl265140265173%_))
                                      (let ((_%$%e265141265176%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl265140265173%_))))
                                        (let ((_%$%hd265142265180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265141265176%_)))
                                              (_%$%tl265143265183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265141265176%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265143265183%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd265139265170%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd265142265180%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g265131265149%_
                                               _%$%g265132265153%_))))
                                      (_%$%g265131265149%_
                                       _%$%g265132265153%_))))
                              (_%$%g265131265149%_ _%$%g265132265153%_))))
                      (_%$%g265131265149%_ _%$%g265132265153%_)))))
          (_%$%g265130265204%_ _%$stx265127%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx265208%_)
        (let* ((_%__stx269524269525%_ _%$stx265208%_)
               (_%$%g265215265276%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269524269525%_)))))
          (let ((_%__kont269527269528%_
                 (lambda (_%$%g265217265514%_ _%$%g265218265516%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g265218265516%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g265217265514%_ '()))
                                     '())))))
                (_%__kont269529269530%_
                 (lambda (_%$%g265228265453%_
                          _%$%g265229265455%_
                          _%$%g265230265456%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g265230265456%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g265229265455%_ '()))
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
                                 (cons _%$%g265228265453%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont269531269532%_
                 (lambda (_%$%g265247265377%_ _%$%g265248265379%_)
                   (cons _%$%g265248265379%_
                         (cons _%$%g265247265377%_ (cons '#f '())))))
                (_%__kont269533269534%_
                 (lambda (_%$%g265255265327%_
                          _%$%g265256265329%_
                          _%$%g265257265330%_)
                   (cons _%$%g265257265330%_
                         (cons _%$%g265256265329%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g265255265327%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx269524269525%_))
                (let ((_%$%e265219265484%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx269524269525%_))))
                  (let ((_%$%tl265221265491%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e265219265484%_)))
                        (_%$%hd265220265488%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e265219265484%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl265221265491%_))
                        (let ((_%$%e265222265494%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl265221265491%_))))
                          (let ((_%$%tl265224265501%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e265222265494%_)))
                                (_%$%hd265223265498%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e265222265494%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl265224265501%_))
                                (let ((_%$%e265225265504%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl265224265501%_))))
                                  (let ((_%$%tl265227265511%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e265225265504%_)))
                                        (_%$%hd265226265508%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e265225265504%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl265227265511%_))
                                        (_%__kont269527269528%_
                                         _%$%hd265226265508%_
                                         _%$%hd265223265498%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl265227265511%_))
                                            (let ((_%$%e265240265429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl265227265511%_))))
                                              (let ((_%$%tl265242265436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e265240265429%_)))
                                                    (_%$%hd265241265433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e265240265429%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd265241265433%_))
                                                    (let ((_%$%e265243265439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd265241265433%_))))
                                                      (if (equal? _%$%e265243265439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl265242265436%_))
                      (let ((_%$%e265244265443%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl265242265436%_))))
                        (let ((_%$%tl265246265450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265244265443%_)))
                              (_%$%hd265245265447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265244265443%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265246265450%_))
                              (_%__kont269529269530%_
                               _%$%hd265245265447%_
                               _%$%hd265226265508%_
                               _%$%hd265223265498%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd265226265508%_))
                                  (let ((_%$%e265267265313%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd265226265508%_))))
                                    (declare (not safe))
                                    (_%$%g265215265276%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g265215265276%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd265226265508%_))
                          (let ((_%$%e265267265313%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd265226265508%_))))
                            (if (equal? _%$%e265267265313%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl265242265436%_))
                                    (_%__kont269533269534%_
                                     _%$%hd265241265433%_
                                     _%$%hd265223265498%_
                                     _%$%hd265220265488%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g265215265276%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g265215265276%_))))
                          (let () (declare (not safe)) (_%$%g265215265276%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd265226265508%_))
                      (let ((_%$%e265267265313%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd265226265508%_))))
                        (if (equal? _%$%e265267265313%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl265242265436%_))
                                (_%__kont269533269534%_
                                 _%$%hd265241265433%_
                                 _%$%hd265223265498%_
                                 _%$%hd265220265488%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g265215265276%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g265215265276%_))))
                      (let () (declare (not safe)) (_%$%g265215265276%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd265226265508%_))
                                                        (let ((_%$%e265267265313%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd265226265508%_))))
                  (if (equal? _%$%e265267265313%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl265242265436%_))
                          (_%__kont269533269534%_
                           _%$%hd265241265433%_
                           _%$%hd265223265498%_
                           _%$%hd265220265488%_)
                          (let () (declare (not safe)) (_%$%g265215265276%_)))
                      (let () (declare (not safe)) (_%$%g265215265276%_))))
                (let () (declare (not safe)) (_%$%g265215265276%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd265226265508%_))
                                                (let ((_%$%e265267265313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd265226265508%_))))
                                                  (declare (not safe))
                                                  (_%$%g265215265276%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g265215265276%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl265224265501%_))
                                    (_%__kont269531269532%_
                                     _%$%hd265223265498%_
                                     _%$%hd265220265488%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g265215265276%_))))))
                        (let () (declare (not safe)) (_%$%g265215265276%_)))))
                (let () (declare (not safe)) (_%$%g265215265276%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx265535%_)
        (let* ((_%$%g265539265568%_
                (lambda (_%$%g265540265564%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265540265564%_))))
               (_%$%g265538265673%_
                (lambda (_%$%g265540265572%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265540265572%_))
                      (let ((_%$%e265542265575%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g265540265572%_))))
                        (let ((_%$%hd265543265579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265542265575%_)))
                              (_%$%tl265544265582%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265542265575%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl265544265582%_))
                              (let ((_g270154_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl265544265582%_
                                        '0))))
                                (begin
                                  (let ((_g270155_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g270154_)
                                               (##values-length _g270154_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g270155_ 2)))
                                        (error "Context expects 2 values"
                                               _g270155_)))
                                  (let ((_%$%target265545265585%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270154_ 0)))
                                        (_%$%tl265547265588%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270154_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl265547265588%_))
                                        (letrec ((_%$%loop265548265591%_
                                                  (lambda (_%$%hd265546265595%_
                                                           _%$%clause265552265598%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd265546265595%_))
                                                        (let ((_%$%e265549265600%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd265546265595%_))))
                  (let ((_%$%lp-hd265550265604%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e265549265600%_)))
                        (_%$%lp-tl265551265607%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e265549265600%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd265550265604%_))
                        (let ((_g270156_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd265550265604%_
                                  '0))))
                          (begin
                            (let ((_g270157_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g270156_)
                                         (##values-length _g270156_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g270157_ 2)))
                                  (error "Context expects 2 values"
                                         _g270157_)))
                            (let ((_%$%target265554265610%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g270156_ 0)))
                                  (_%$%tl265556265613%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g270156_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl265556265613%_))
                                  (letrec ((_%$%loop265557265616%_
                                            (lambda (_%$%hd265555265620%_
                                                     _%$%clause265561265623%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd265555265620%_))
                                                  (let ((_%$%e265558265625%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd265555265620%_))))
                                                    (let ((_%$%lp-hd265559265629%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e265558265625%_)))
                                                          (_%$%lp-tl265560265632%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e265558265625%_))))
                                                      (_%$%loop265557265616%_
                                                       _%$%lp-tl265560265632%_
                                                       (cons _%$%lp-hd265559265629%_
                                                             _%$%clause265561265623%_))))
                                                  (let ((_%$%clause265562265635%_
                                                         (reverse _%$%clause265561265623%_)))
                                                    (_%$%loop265548265591%_
                                                     _%$%lp-tl265551265607%_
                                                     (cons _%$%clause265562265635%_
                                                           _%$%clause265552265598%_)))))))
                                    (_%$%loop265557265616%_
                                     _%$%target265554265610%_
                                     '()))
                                  (_%$%g265539265568%_ _%$%g265540265572%_)))))
                        (_%$%g265539265568%_ _%$%g265540265572%_))))
                (let ((_%$%clause265553265638%_
                       (reverse _%$%clause265552265598%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp270158
                                           (lambda (_%$%g265656265661%_
                                                    _%$%g265657265664%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp270159
                                                                (lambda (_%$%g265658265667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g265659265670%_)
                          (cons _%$%g265658265667%_ _%$%g265659265670%_))))
                   (declare (not safe))
                   (foldr__0 __tmp270159 '() _%$%g265656265661%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g265657265664%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp270158
                                       '()
                                       _%$%clause265553265638%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop265548265591%_
                                           _%$%target265545265585%_
                                           '()))
                                        (_%$%g265539265568%_
                                         _%$%g265540265572%_)))))
                              (_%$%g265539265568%_ _%$%g265540265572%_))))
                      (_%$%g265539265568%_ _%$%g265540265572%_)))))
          (_%$%g265538265673%_ _%$stx265535%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx265679%_)
        (let* ((_%$%g265683265701%_
                (lambda (_%$%g265684265697%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265684265697%_))))
               (_%$%g265682265756%_
                (lambda (_%$%g265684265705%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265684265705%_))
                      (let ((_%$%e265687265708%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g265684265705%_))))
                        (let ((_%$%hd265688265712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265687265708%_)))
                              (_%$%tl265689265715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265687265708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl265689265715%_))
                              (let ((_%$%e265690265718%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl265689265715%_))))
                                (let ((_%$%hd265691265722%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e265690265718%_)))
                                      (_%$%tl265692265725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e265690265718%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl265692265725%_))
                                      (let ((_%$%e265693265728%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl265692265725%_))))
                                        (let ((_%$%hd265694265732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265693265728%_)))
                                              (_%$%tl265695265735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265693265728%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265695265735%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd265691265722%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd265694265732%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g265683265701%_
                                               _%$%g265684265705%_))))
                                      (_%$%g265683265701%_
                                       _%$%g265684265705%_))))
                              (_%$%g265683265701%_ _%$%g265684265705%_))))
                      (_%$%g265683265701%_ _%$%g265684265705%_)))))
          (_%$%g265682265756%_ _%$stx265679%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx265760%_)
        (let* ((_%$%g265764265782%_
                (lambda (_%$%g265765265778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265765265778%_))))
               (_%$%g265763265837%_
                (lambda (_%$%g265765265786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265765265786%_))
                      (let ((_%$%e265768265789%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g265765265786%_))))
                        (let ((_%$%hd265769265793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265768265789%_)))
                              (_%$%tl265770265796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265768265789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl265770265796%_))
                              (let ((_%$%e265771265799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl265770265796%_))))
                                (let ((_%$%hd265772265803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e265771265799%_)))
                                      (_%$%tl265773265806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e265771265799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl265773265806%_))
                                      (let ((_%$%e265774265809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl265773265806%_))))
                                        (let ((_%$%hd265775265813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265774265809%_)))
                                              (_%$%tl265776265816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265774265809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265776265816%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd265772265803%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd265775265813%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g265764265782%_
                                               _%$%g265765265786%_))))
                                      (_%$%g265764265782%_
                                       _%$%g265765265786%_))))
                              (_%$%g265764265782%_ _%$%g265765265786%_))))
                      (_%$%g265764265782%_ _%$%g265765265786%_)))))
          (_%$%g265763265837%_ _%$stx265760%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx265841%_)
        (let* ((_%$%g265845265874%_
                (lambda (_%$%g265846265870%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265846265870%_))))
               (_%$%g265844265970%_
                (lambda (_%$%g265846265878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265846265878%_))
                      (let ((_%$%e265849265881%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g265846265878%_))))
                        (let ((_%$%hd265850265885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265849265881%_)))
                              (_%$%tl265851265888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265849265881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl265851265888%_))
                              (let ((_g270160_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl265851265888%_
                                        '0))))
                                (begin
                                  (let ((_g270161_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g270160_)
                                               (##values-length _g270160_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g270161_ 2)))
                                        (error "Context expects 2 values"
                                               _g270161_)))
                                  (let ((_%$%target265852265891%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270160_ 0)))
                                        (_%$%tl265854265894%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270160_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl265854265894%_))
                                        (letrec ((_%$%loop265855265897%_
                                                  (lambda (_%$%hd265853265901%_
                                                           _%$%rule265859265904%_
                                                           _%$%proc265860265905%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd265853265901%_))
                                                        (let ((_%$%e265856265907%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd265853265901%_))))
                  (let ((_%$%lp-hd265857265911%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e265856265907%_)))
                        (_%$%lp-tl265858265914%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e265856265907%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd265857265911%_))
                        (let ((_%$%e265863265917%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd265857265911%_))))
                          (let ((_%$%hd265864265921%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e265863265917%_)))
                                (_%$%tl265865265924%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e265863265917%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl265865265924%_))
                                (let ((_%$%e265866265927%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl265865265924%_))))
                                  (let ((_%$%hd265867265931%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e265866265927%_)))
                                        (_%$%tl265868265934%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e265866265927%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl265868265934%_))
                                        (_%$%loop265855265897%_
                                         _%$%lp-tl265858265914%_
                                         (cons _%$%hd265867265931%_
                                               _%$%rule265859265904%_)
                                         (cons _%$%hd265864265921%_
                                               _%$%proc265860265905%_))
                                        (_%$%g265845265874%_
                                         _%$%g265846265878%_))))
                                (_%$%g265845265874%_ _%$%g265846265878%_))))
                        (_%$%g265845265874%_ _%$%g265846265878%_))))
                (let ((_%$%rule265861265937%_ (reverse _%$%rule265859265904%_))
                      (_%$%proc265862265939%_
                       (reverse _%$%proc265860265905%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule265861265937%_
                             _%$%proc265862265939%_))
                          (let ((__tmp270162
                                 (lambda (_%$%g265958265962%_
                                          _%$%g265959265965%_
                                          _%$%g265960265967%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g265959265965%_
                                                     (cons _%$%g265958265962%_
                                                           '())))
                                         _%$%g265960265967%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp270162
                             '()
                             _%$%rule265861265937%_
                             _%$%proc265862265939%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop265855265897%_
                                           _%$%target265852265891%_
                                           '()
                                           '()))
                                        (_%$%g265845265874%_
                                         _%$%g265846265878%_)))))
                              (_%$%g265845265874%_ _%$%g265846265878%_))))
                      (_%$%g265845265874%_ _%$%g265846265878%_)))))
          (_%$%g265844265970%_ _%$stx265841%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx265975%_)
        (let* ((_%$%g265979265997%_
                (lambda (_%$%g265980265993%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265980265993%_))))
               (_%$%g265978266052%_
                (lambda (_%$%g265980266001%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265980266001%_))
                      (let ((_%$%e265983266004%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g265980266001%_))))
                        (let ((_%$%hd265984266008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265983266004%_)))
                              (_%$%tl265985266011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265983266004%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl265985266011%_))
                              (let ((_%$%e265986266014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl265985266011%_))))
                                (let ((_%$%hd265987266018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e265986266014%_)))
                                      (_%$%tl265988266021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e265986266014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl265988266021%_))
                                      (let ((_%$%e265989266024%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl265988266021%_))))
                                        (let ((_%$%hd265990266028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265989266024%_)))
                                              (_%$%tl265991266031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265989266024%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265991266031%_))
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
                                                (cons _%$%hd265987266018%_
                                                      '()))
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
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '!lambda-inline))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'type))
                          '()))
              (cons _%$%hd265990266028%_ '())))
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
                                (cons _%$%hd265987266018%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g265979265997%_
                                               _%$%g265980266001%_))))
                                      (_%$%g265979265997%_
                                       _%$%g265980266001%_))))
                              (_%$%g265979265997%_ _%$%g265980266001%_))))
                      (_%$%g265979265997%_ _%$%g265980266001%_)))))
          (_%$%g265978266052%_ _%$stx265975%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx266056%_)
        (let* ((_%__stx269642269643%_ _%$stx266056%_)
               (_%$%g266061266086%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269642269643%_)))))
          (let ((_%__kont269645269646%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont269647269648%_
                 (lambda (_%$%g266066266133%_
                          _%$%g266067266135%_
                          _%$%g266068266136%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g266068266136%_
                                           (cons _%$%g266067266135%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g266066266133%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx269642269643%_))
                (let ((_%$%e266063266162%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx269642269643%_))))
                  (let ((_%$%tl266065266169%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266063266162%_)))
                        (_%$%hd266064266166%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266063266162%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl266065266169%_))
                        (_%__kont269645269646%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl266065266169%_))
                            (let ((_%$%e266072266103%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl266065266169%_))))
                              (let ((_%$%tl266074266110%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e266072266103%_)))
                                    (_%$%hd266073266107%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e266072266103%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd266073266107%_))
                                    (let ((_%$%e266075266113%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd266073266107%_))))
                                      (let ((_%$%tl266077266120%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e266075266113%_)))
                                            (_%$%hd266076266117%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e266075266113%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl266077266120%_))
                                            (let ((_%$%e266078266123%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl266077266120%_))))
                                              (let ((_%$%tl266080266130%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266078266123%_)))
                                                    (_%$%hd266079266127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266078266123%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl266080266130%_))
                                                    (_%__kont269647269648%_
                                                     _%$%tl266074266110%_
                                                     _%$%hd266079266127%_
                                                     _%$%hd266076266117%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g266061266086%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g266061266086%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g266061266086%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g266061266086%_))))))
                (let () (declare (not safe)) (_%$%g266061266086%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx266180%_)
        (let* ((_%__stx269686269687%_ _%$stx266180%_)
               (_%$%g266185266216%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269686269687%_)))))
          (let ((_%__kont269689269690%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont269691269692%_
                 (lambda (_%$%g266190266281%_
                          _%$%g266191266283%_
                          _%$%g266192266284%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g266192266284%_
                                           (let ((__tmp270163
                                                  (lambda (_%$%g266304266307%_
                                                           _%$%g266305266310%_)
                                                    (cons _%$%g266304266307%_
                                                          _%$%g266305266310%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp270163
                                              '()
                                              _%$%g266191266283%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g266190266281%_)
                                     '()))))))
            (let ((_%__match269729269730%_
                   (lambda (_%$%e266193266223%_
                            _%$%hd266194266227%_
                            _%$%tl266195266230%_
                            _%$%e266196266233%_
                            _%$%hd266197266237%_
                            _%$%tl266198266240%_
                            _%$%e266199266243%_
                            _%$%hd266200266247%_
                            _%$%tl266201266250%_
                            _%__splice269693269694%_
                            _%$%target266202266253%_
                            _%$%tl266204266256%_)
                     (letrec ((_%$%loop266205266259%_
                               (lambda (_%$%hd266203266263%_
                                        _%$%sig266209266266%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd266203266263%_))
                                     (let ((_%$%e266206266268%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd266203266263%_))))
                                       (let ((_%$%lp-tl266208266275%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e266206266268%_)))
                                             (_%$%lp-hd266207266272%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e266206266268%_))))
                                         (_%$%loop266205266259%_
                                          _%$%lp-tl266208266275%_
                                          (cons _%$%lp-hd266207266272%_
                                                _%$%sig266209266266%_))))
                                     (let ((_%$%sig266210266278%_
                                            (reverse _%$%sig266209266266%_)))
                                       (_%__kont269691269692%_
                                        _%$%tl266198266240%_
                                        _%$%sig266210266278%_
                                        _%$%hd266200266247%_))))))
                       (_%$%loop266205266259%_
                        _%$%target266202266253%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269686269687%_))
                  (let ((_%$%e266187266320%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx269686269687%_))))
                    (let ((_%$%tl266189266327%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e266187266320%_)))
                          (_%$%hd266188266324%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e266187266320%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl266189266327%_))
                          (_%__kont269689269690%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl266189266327%_))
                              (let ((_%$%e266196266233%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl266189266327%_))))
                                (let ((_%$%tl266198266240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e266196266233%_)))
                                      (_%$%hd266197266237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e266196266233%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266197266237%_))
                                      (let ((_%$%e266199266243%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd266197266237%_))))
                                        (let ((_%$%tl266201266250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266199266243%_)))
                                              (_%$%hd266200266247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266199266243%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl266201266250%_))
                                              (let ((_%__splice269693269694%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl266201266250%_
                                                        '0))))
                                                (let ((_%$%tl266204266256%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269693269694%_
                                                          '1)))
                                                      (_%$%target266202266253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269693269694%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl266204266256%_))
                                                      (_%__match269729269730%_
                                                       _%$%e266187266320%_
                                                       _%$%hd266188266324%_
                                                       _%$%tl266189266327%_
                                                       _%$%e266196266233%_
                                                       _%$%hd266197266237%_
                                                       _%$%tl266198266240%_
                                                       _%$%e266199266243%_
                                                       _%$%hd266200266247%_
                                                       _%$%tl266201266250%_
                                                       _%__splice269693269694%_
                                                       _%$%target266202266253%_
                                                       _%$%tl266204266256%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g266185266216%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g266185266216%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g266185266216%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g266185266216%_))))))
                  (let () (declare (not safe)) (_%$%g266185266216%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx266339%_)
        (let* ((_%__stx269732269733%_ _%$stx266339%_)
               (_%$%g266344266391%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269732269733%_)))))
          (let ((_%__kont269735269736%_
                 (lambda (_%$%g266346266549%_ _%$%g266347266551%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g266347266551%_
                               (let ((__tmp270164
                                      (lambda (_%$%g266571266574%_
                                               _%$%g266572266577%_)
                                        (cons _%$%g266571266574%_
                                              _%$%g266572266577%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp270164
                                  '()
                                  _%$%g266346266549%_))))))
                (_%__kont269739269740%_
                 (lambda (_%$%g266369266446%_ _%$%g266370266448%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g266370266448%_
                               (let ((__tmp270165
                                      (lambda (_%$%g266465266468%_
                                               _%$%g266466266471%_)
                                        (cons _%$%g266465266468%_
                                              _%$%g266466266471%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp270165
                                  '()
                                  _%$%g266369266446%_)))))))
            (let* ((_%__match269799269800%_
                    (lambda (_%$%e266371266398%_
                             _%$%hd266372266402%_
                             _%$%tl266373266405%_
                             _%$%e266374266408%_
                             _%$%hd266375266412%_
                             _%$%tl266376266415%_
                             _%__splice269741269742%_
                             _%$%target266377266418%_
                             _%$%tl266379266421%_)
                      (letrec ((_%$%loop266380266424%_
                                (lambda (_%$%hd266378266428%_
                                         _%$%sig266384266431%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266378266428%_))
                                      (let ((_%$%e266381266433%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd266378266428%_))))
                                        (let ((_%$%lp-tl266383266440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266381266433%_)))
                                              (_%$%lp-hd266382266437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266381266433%_))))
                                          (_%$%loop266380266424%_
                                           _%$%lp-tl266383266440%_
                                           (cons _%$%lp-hd266382266437%_
                                                 _%$%sig266384266431%_))))
                                      (let ((_%$%sig266385266443%_
                                             (reverse _%$%sig266384266431%_)))
                                        (_%__kont269739269740%_
                                         _%$%sig266385266443%_
                                         _%$%hd266375266412%_))))))
                        (_%$%loop266380266424%_
                         _%$%target266377266418%_
                         '()))))
                   (_%__match269791269792%_
                    (lambda (_%$%e266371266398%_
                             _%$%hd266372266402%_
                             _%$%tl266373266405%_
                             _%$%e266374266408%_
                             _%$%hd266375266412%_
                             _%$%tl266376266415%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl266376266415%_))
                          (let ((_%__splice269741269742%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl266376266415%_
                                    '0))))
                            (let ((_%$%tl266379266421%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269741269742%_
                                      '1)))
                                  (_%$%target266377266418%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269741269742%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl266379266421%_))
                                  (_%__match269799269800%_
                                   _%$%e266371266398%_
                                   _%$%hd266372266402%_
                                   _%$%tl266373266405%_
                                   _%$%e266374266408%_
                                   _%$%hd266375266412%_
                                   _%$%tl266376266415%_
                                   _%__splice269741269742%_
                                   _%$%target266377266418%_
                                   _%$%tl266379266421%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266344266391%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266344266391%_)))))
                   (_%__match269779269780%_
                    (lambda (_%$%e266348266481%_
                             _%$%hd266349266485%_
                             _%$%tl266350266488%_
                             _%$%e266351266491%_
                             _%$%hd266352266495%_
                             _%$%tl266353266498%_
                             _%$%e266354266501%_
                             _%$%hd266355266505%_
                             _%$%tl266356266508%_
                             _%$%e266357266511%_
                             _%$%hd266358266515%_
                             _%$%tl266359266518%_
                             _%__splice269737269738%_
                             _%$%target266360266521%_
                             _%$%tl266362266524%_)
                      (letrec ((_%$%loop266363266527%_
                                (lambda (_%$%hd266361266531%_
                                         _%$%sig266367266534%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266361266531%_))
                                      (let ((_%$%e266364266536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd266361266531%_))))
                                        (let ((_%$%lp-tl266366266543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266364266536%_)))
                                              (_%$%lp-hd266365266540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266364266536%_))))
                                          (_%$%loop266363266527%_
                                           _%$%lp-tl266366266543%_
                                           (cons _%$%lp-hd266365266540%_
                                                 _%$%sig266367266534%_))))
                                      (let ((_%$%sig266368266546%_
                                             (reverse _%$%sig266367266534%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl266356266508%_))
                                            (_%__kont269735269736%_
                                             _%$%sig266368266546%_
                                             _%$%hd266352266495%_)
                                            (_%__match269791269792%_
                                             _%$%e266348266481%_
                                             _%$%hd266349266485%_
                                             _%$%tl266350266488%_
                                             _%$%e266351266491%_
                                             _%$%hd266352266495%_
                                             _%$%tl266353266498%_)))))))
                        (_%$%loop266363266527%_
                         _%$%target266360266521%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269732269733%_))
                  (let ((_%$%e266348266481%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx269732269733%_))))
                    (let ((_%$%tl266350266488%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e266348266481%_)))
                          (_%$%hd266349266485%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e266348266481%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl266350266488%_))
                          (let ((_%$%e266351266491%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl266350266488%_))))
                            (let ((_%$%tl266353266498%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266351266491%_)))
                                  (_%$%hd266352266495%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266351266491%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl266353266498%_))
                                  (let ((_%$%e266354266501%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl266353266498%_))))
                                    (let ((_%$%tl266356266508%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e266354266501%_)))
                                          (_%$%hd266355266505%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e266354266501%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd266355266505%_))
                                          (let ((_%$%e266357266511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd266355266505%_))))
                                            (let ((_%$%tl266359266518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e266357266511%_)))
                                                  (_%$%hd266358266515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e266357266511%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd266358266515%_))
                                                  (if (let ((__tmp270166
                                                             |gxc[1]#_g270167_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp270166
                                                         _%$%hd266358266515%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl266359266518%_))
                                                          (let ((_%__splice269737269738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl266359266518%_
                            '0))))
                    (let ((_%$%tl266362266524%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269737269738%_ '1)))
                          (_%$%target266360266521%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269737269738%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl266362266524%_))
                          (_%__match269779269780%_
                           _%$%e266348266481%_
                           _%$%hd266349266485%_
                           _%$%tl266350266488%_
                           _%$%e266351266491%_
                           _%$%hd266352266495%_
                           _%$%tl266353266498%_
                           _%$%e266354266501%_
                           _%$%hd266355266505%_
                           _%$%tl266356266508%_
                           _%$%e266357266511%_
                           _%$%hd266358266515%_
                           _%$%tl266359266518%_
                           _%__splice269737269738%_
                           _%$%target266360266521%_
                           _%$%tl266362266524%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl266353266498%_))
                              (let ((_%__splice269741269742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl266353266498%_
                                        '0))))
                                (let ((_%$%tl266379266421%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice269741269742%_
                                          '1)))
                                      (_%$%target266377266418%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice269741269742%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl266379266421%_))
                                      (_%__match269799269800%_
                                       _%$%e266348266481%_
                                       _%$%hd266349266485%_
                                       _%$%tl266350266488%_
                                       _%$%e266351266491%_
                                       _%$%hd266352266495%_
                                       _%$%tl266353266498%_
                                       _%__splice269741269742%_
                                       _%$%target266377266418%_
                                       _%$%tl266379266421%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g266344266391%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g266344266391%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl266353266498%_))
                      (let ((_%__splice269741269742%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl266353266498%_
                                '0))))
                        (let ((_%$%tl266379266421%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269741269742%_ '1)))
                              (_%$%target266377266418%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269741269742%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266379266421%_))
                              (_%__match269799269800%_
                               _%$%e266348266481%_
                               _%$%hd266349266485%_
                               _%$%tl266350266488%_
                               _%$%e266351266491%_
                               _%$%hd266352266495%_
                               _%$%tl266353266498%_
                               _%__splice269741269742%_
                               _%$%target266377266418%_
                               _%$%tl266379266421%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g266344266391%_)))))
                      (let () (declare (not safe)) (_%$%g266344266391%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl266353266498%_))
                  (let ((_%__splice269741269742%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl266353266498%_
                            '0))))
                    (let ((_%$%tl266379266421%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269741269742%_ '1)))
                          (_%$%target266377266418%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269741269742%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl266379266421%_))
                          (_%__match269799269800%_
                           _%$%e266348266481%_
                           _%$%hd266349266485%_
                           _%$%tl266350266488%_
                           _%$%e266351266491%_
                           _%$%hd266352266495%_
                           _%$%tl266353266498%_
                           _%__splice269741269742%_
                           _%$%target266377266418%_
                           _%$%tl266379266421%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g266344266391%_)))))
                  (let () (declare (not safe)) (_%$%g266344266391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl266353266498%_))
                                                      (let ((_%__splice269741269742%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl266353266498%_
                        '0))))
                (let ((_%$%tl266379266421%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269741269742%_ '1)))
                      (_%$%target266377266418%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269741269742%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl266379266421%_))
                      (_%__match269799269800%_
                       _%$%e266348266481%_
                       _%$%hd266349266485%_
                       _%$%tl266350266488%_
                       _%$%e266351266491%_
                       _%$%hd266352266495%_
                       _%$%tl266353266498%_
                       _%__splice269741269742%_
                       _%$%target266377266418%_
                       _%$%tl266379266421%_)
                      (let () (declare (not safe)) (_%$%g266344266391%_)))))
              (let () (declare (not safe)) (_%$%g266344266391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl266353266498%_))
                                              (let ((_%__splice269741269742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl266353266498%_
                                                        '0))))
                                                (let ((_%$%tl266379266421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269741269742%_
                                                          '1)))
                                                      (_%$%target266377266418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269741269742%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl266379266421%_))
                                                      (_%__match269799269800%_
                                                       _%$%e266348266481%_
                                                       _%$%hd266349266485%_
                                                       _%$%tl266350266488%_
                                                       _%$%e266351266491%_
                                                       _%$%hd266352266495%_
                                                       _%$%tl266353266498%_
                                                       _%__splice269741269742%_
                                                       _%$%target266377266418%_
                                                       _%$%tl266379266421%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g266344266391%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g266344266391%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl266353266498%_))
                                      (let ((_%__splice269741269742%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl266353266498%_
                                                '0))))
                                        (let ((_%$%tl266379266421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269741269742%_
                                                  '1)))
                                              (_%$%target266377266418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269741269742%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl266379266421%_))
                                              (_%__match269799269800%_
                                               _%$%e266348266481%_
                                               _%$%hd266349266485%_
                                               _%$%tl266350266488%_
                                               _%$%e266351266491%_
                                               _%$%hd266352266495%_
                                               _%$%tl266353266498%_
                                               _%__splice269741269742%_
                                               _%$%target266377266418%_
                                               _%$%tl266379266421%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g266344266391%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g266344266391%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266344266391%_)))))
                  (let () (declare (not safe)) (_%$%g266344266391%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx267734%_ _%id267736%_)
        (let ((_%proc267740%_
               (let ((__tmp270168
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id267736%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp270168))))
          (if (procedure? _%proc267740%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx267734%_
                 _%id267736%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx267725%_ _%id267727%_)
        (let ((_%klass267731%_
               (let ((__tmp270169
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id267727%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp270169))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass267731%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx267725%_
                 _%id267727%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx266975%_ _%proc266977%_ _%sig266978%_)
        (letrec ((_%signature-arity266980%_
                  (lambda (_%args267657%_)
                    (let _%loop267660%_ ((_%rest267663%_ _%args267657%_)
                                         (_%count267665%_ '0))
                      (let* ((_%$%rest267666267677%_ _%rest267663%_)
                             (_%$%E267670267683%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest267666267677%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K267673267714%_
                               (lambda (_%rest267711%_)
                                 (_%loop267660%_
                                  _%rest267711%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count267665%_ '1)))))
                              (_%$%K267672267703%_ (lambda () _%count267665%_))
                              (_%$%K267671267691%_
                               (lambda () (cons _%count267665%_ '()))))
                          (let ((_%$%try-match267668267707%_
                                 (lambda ()
                                   (if (null? _%$%rest267666267677%_)
                                       (_%$%K267672267703%_)
                                       (_%$%K267671267691%_)))))
                            (if (pair? _%$%rest267666267677%_)
                                (let* ((_%$%tl267675267718%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest267666267677%_)))
                                       (_%rest267722%_ _%$%tl267675267718%_))
                                  (_%$%K267673267714%_ _%rest267722%_))
                                (_%$%try-match267668267707%_))))))))
                 (_%make-signature266982%_
                  (lambda (_%args267539%_
                           _%return267541%_
                           _%effect267542%_
                           _%unchecked267543%_)
                    (let ((__tmp270170
                           (lambda (_%$%g267544267546%_)
                             (|gxc[1]#verify-class!|
                              _%ctx266975%_
                              _%$%g267544267546%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp270170 _%args267539%_))
                    (|gxc[1]#verify-class!| _%ctx266975%_ _%return267541%_)
                    (if _%unchecked267543%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx266975%_
                         _%unchecked267543%_)
                        '#!void)
                    (let ((_%arity267550%_
                           (_%signature-arity266980%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args267539%_)))))
                      (if _%effect267542%_
                          (let ((_%effect267553%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect267542%_))))
                            (if (and (list? _%effect267553%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect267553%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx266975%_
                                   _%proc266977%_
                                   _%effect267553%_))))
                          '#!void)
                      (cons _%arity267550%_
                            (cons (let* ((_%$%g267556267579%_
                                          (lambda (_%$%g267557267575%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g267557267575%_))))
                                         (_%$%g267555267653%_
                                          (lambda (_%$%g267557267583%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g267557267583%_))
                                                (let ((_%$%e267562267586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g267557267583%_))))
                                                  (let ((_%$%hd267563267590%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e267562267586%_)))
                                                        (_%$%tl267564267593%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e267562267586%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl267564267593%_))
                                                        (let ((_%$%e267565267596%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl267564267593%_))))
                  (let ((_%$%hd267566267600%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e267565267596%_)))
                        (_%$%tl267567267603%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e267565267596%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl267567267603%_))
                        (let ((_%$%e267568267606%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl267567267603%_))))
                          (let ((_%$%hd267569267610%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e267568267606%_)))
                                (_%$%tl267570267613%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e267568267606%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl267570267613%_))
                                (let ((_%$%e267571267616%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl267570267613%_))))
                                  (let ((_%$%hd267572267620%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e267571267616%_)))
                                        (_%$%tl267573267623%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e267571267616%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl267573267623%_))
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
                        (cons _%$%hd267563267590%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd267566267600%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd267569267610%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd267572267620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'builtin))
                                      '()))
                          '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g267556267579%_
                                         _%$%g267557267583%_))))
                                (_%$%g267556267579%_ _%$%g267557267583%_))))
                        (_%$%g267556267579%_ _%$%g267557267583%_))))
                (_%$%g267556267579%_ _%$%g267557267583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g267556267579%_
                                                 _%$%g267557267583%_)))))
                                    (_%$%g267555267653%_
                                     (list _%args267539%_
                                           _%return267541%_
                                           _%effect267542%_
                                           _%unchecked267543%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx266975%_ _%proc266977%_)
          (let* ((_%__stx269810269811%_ _%sig266978%_)
                 (_%$%g266989267092%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx269810269811%_)))))
            (let ((_%__kont269813269814%_
                   (lambda (_%$%g266991267520%_ _%$%g266992267522%_)
                     (_%make-signature266982%_
                      _%$%g266992267522%_
                      _%$%g266991267520%_
                      '#f
                      '#f)))
                  (_%__kont269815269816%_
                   (lambda (_%$%g266999267471%_
                            _%$%g267000267473%_
                            _%$%g267001267474%_)
                     (_%make-signature266982%_
                      _%$%g267001267474%_
                      _%$%g267000267473%_
                      _%$%g266999267471%_
                      '#f)))
                  (_%__kont269817269818%_
                   (lambda (_%$%g267015267395%_
                            _%$%g267016267397%_
                            _%$%g267017267398%_)
                     (_%make-signature266982%_
                      _%$%g267017267398%_
                      _%$%g267016267397%_
                      _%$%g267015267395%_
                      (let ((__tmp270171
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc266977%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp270171)))))
                  (_%__kont269819269820%_
                   (lambda (_%$%g267035267301%_
                            _%$%g267036267303%_
                            _%$%g267037267304%_
                            _%$%g267038267305%_)
                     (_%make-signature266982%_
                      _%$%g267038267305%_
                      _%$%g267037267304%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g267035267301%_)))))
                  (_%__kont269821269822%_
                   (lambda (_%$%g267059267208%_ _%$%g267060267210%_)
                     (_%make-signature266982%_
                      _%$%g267060267210%_
                      _%$%g267059267208%_
                      '#f
                      (let ((__tmp270172
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc266977%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp270172)))))
                  (_%__kont269823269824%_
                   (lambda (_%$%g267071267143%_
                            _%$%g267072267145%_
                            _%$%g267073267146%_)
                     (_%make-signature266982%_
                      _%$%g267073267146%_
                      _%$%g267072267145%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g267071267143%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269810269811%_))
                  (let ((_%$%e266993267500%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx269810269811%_))))
                    (let ((_%$%tl266995267507%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e266993267500%_)))
                          (_%$%hd266994267504%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e266993267500%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl266995267507%_))
                          (let ((_%$%e266996267510%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl266995267507%_))))
                            (let ((_%$%tl266998267517%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266996267510%_)))
                                  (_%$%hd266997267514%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266996267510%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl266998267517%_))
                                  (_%__kont269813269814%_
                                   _%$%hd266997267514%_
                                   _%$%hd266994267504%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl266998267517%_))
                                      (let ((_%$%e267008267447%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl266998267517%_))))
                                        (let ((_%$%tl267010267454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267008267447%_)))
                                              (_%$%hd267009267451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267008267447%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd267009267451%_))
                                              (let ((_%$%e267011267457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd267009267451%_))))
                                                (if (equal? _%$%e267011267457%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl267010267454%_))
                                                        (let ((_%$%e267012267461%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl267010267454%_))))
                  (let ((_%$%tl267014267468%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e267012267461%_)))
                        (_%$%hd267013267465%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e267012267461%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl267014267468%_))
                        (_%__kont269815269816%_
                         _%$%hd267013267465%_
                         _%$%hd266997267514%_
                         _%$%hd266994267504%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl267014267468%_))
                            (let ((_%$%e267031267381%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl267014267468%_))))
                              (let ((_%$%tl267033267388%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e267031267381%_)))
                                    (_%$%hd267032267385%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e267031267381%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd267032267385%_))
                                    (let ((_%$%e267034267391%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd267032267385%_))))
                                      (if (equal? _%$%e267034267391%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267033267388%_))
                                              (_%__kont269817269818%_
                                               _%$%hd267013267465%_
                                               _%$%hd266997267514%_
                                               _%$%hd266994267504%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl267033267388%_))
                                                  (let ((_%$%e267056267291%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl267033267388%_))))
                                                    (let ((_%$%tl267058267298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e267056267291%_)))
                                                          (_%$%hd267057267295%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e267056267291%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl267058267298%_))
                                                          (_%__kont269819269820%_
                                                           _%$%hd267057267295%_
                                                           _%$%hd267013267465%_
                                                           _%$%hd266997267514%_
                                                           _%$%hd266994267504%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g266989267092%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g266989267092%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g266989267092%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g266989267092%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g266989267092%_))))))
                (let () (declare (not safe)) (_%$%g266989267092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e267011267457%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl267010267454%_))
                                                            (_%__kont269821269822%_
                                                             _%$%hd266997267514%_
                                                             _%$%hd266994267504%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl267010267454%_))
                        (let ((_%$%e267084267133%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl267010267454%_))))
                          (let ((_%$%tl267086267140%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e267084267133%_)))
                                (_%$%hd267085267137%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e267084267133%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl267086267140%_))
                                (_%__kont269823269824%_
                                 _%$%hd267085267137%_
                                 _%$%hd266997267514%_
                                 _%$%hd266994267504%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g266989267092%_)))))
                        (let () (declare (not safe)) (_%$%g266989267092%_))))
                (let () (declare (not safe)) (_%$%g266989267092%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g266989267092%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g266989267092%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266989267092%_)))))
                  (let () (declare (not safe)) (_%$%g266989267092%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig266586%_)
        (let* ((_%$%g266589266669%_
                (lambda (_%$%g266590266665%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266590266665%_))))
               (_%$%g266588266971%_
                (lambda (_%$%g266590266673%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266590266673%_))
                      (let ((_%$%e266596266676%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g266590266673%_))))
                        (let ((_%$%hd266597266680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266596266676%_)))
                              (_%$%tl266598266683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266596266676%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl266598266683%_))
                              (let ((_%$%e266599266686%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl266598266683%_))))
                                (let ((_%$%hd266600266690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e266599266686%_)))
                                      (_%$%tl266601266693%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e266599266686%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd266600266690%_))
                                      (let ((_%$%e266602266696%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd266600266690%_))))
                                        (if (equal? _%$%e266602266696%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl266601266693%_))
                                                (let ((_%$%e266603266700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl266601266693%_))))
                                                  (let ((_%$%hd266604266704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e266603266700%_)))
                                                        (_%$%tl266605266707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e266603266700%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd266604266704%_))
                                                        (let ((_%$%e266606266710%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd266604266704%_))))
                  (let ((_%$%hd266607266714%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266606266710%_)))
                        (_%$%tl266608266717%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266606266710%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd266607266714%_))
                        (if (let ((__tmp270173 |gxc[1]#_g270174_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp270173
                               _%$%hd266607266714%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl266608266717%_))
                                (let ((_%$%e266609266720%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl266608266717%_))))
                                  (let ((_%$%hd266610266724%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e266609266720%_)))
                                        (_%$%tl266611266727%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e266609266720%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl266611266727%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl266605266707%_))
                                            (let ((_%$%e266612266730%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl266605266707%_))))
                                              (let ((_%$%hd266613266734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266612266730%_)))
                                                    (_%$%tl266614266737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266612266730%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd266613266734%_))
                                                    (let ((_%$%e266615266740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd266613266734%_))))
                                                      (if (equal? _%$%e266615266740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl266614266737%_))
                      (let ((_%$%e266616266744%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl266614266737%_))))
                        (let ((_%$%hd266617266748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266616266744%_)))
                              (_%$%tl266618266751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266616266744%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd266617266748%_))
                              (let ((_%$%e266619266754%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd266617266748%_))))
                                (let ((_%$%hd266620266758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e266619266754%_)))
                                      (_%$%tl266621266761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e266619266754%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd266620266758%_))
                                      (if (let ((__tmp270175
                                                 |gxc[1]#_g270176_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp270175
                                             _%$%hd266620266758%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl266621266761%_))
                                              (let ((_%$%e266622266764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl266621266761%_))))
                                                (let ((_%$%hd266623266768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e266622266764%_)))
                                                      (_%$%tl266624266771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e266622266764%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl266624266771%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl266618266751%_))
                                                          (let ((_%$%e266625266774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl266618266751%_))))
                    (let ((_%$%hd266626266778%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e266625266774%_)))
                          (_%$%tl266627266781%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e266625266774%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd266626266778%_))
                          (let ((_%$%e266628266784%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd266626266778%_))))
                            (if (equal? _%$%e266628266784%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl266627266781%_))
                                    (let ((_%$%e266629266788%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl266627266781%_))))
                                      (let ((_%$%hd266630266792%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e266629266788%_)))
                                            (_%$%tl266631266795%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e266629266788%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd266630266792%_))
                                            (let ((_%$%e266632266798%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd266630266792%_))))
                                              (let ((_%$%hd266633266802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266632266798%_)))
                                                    (_%$%tl266634266805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266632266798%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd266633266802%_))
                                                    (if (let ((__tmp270177
                                                               |gxc[1]#_g270178_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp270177
                                                           _%$%hd266633266802%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl266634266805%_))
                                                            (let ((_%$%e266635266808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl266634266805%_))))
                      (let ((_%$%hd266636266812%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e266635266808%_)))
                            (_%$%tl266637266815%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e266635266808%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl266637266815%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl266631266795%_))
                                (let ((_%$%e266638266818%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl266631266795%_))))
                                  (let ((_%$%hd266639266822%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e266638266818%_)))
                                        (_%$%tl266640266825%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e266638266818%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd266639266822%_))
                                        (let ((_%$%e266641266828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd266639266822%_))))
                                          (if (equal? _%$%e266641266828%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl266640266825%_))
                                                  (let ((_%$%e266642266832%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl266640266825%_))))
                                                    (let ((_%$%hd266643266836%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e266642266832%_)))
                                                          (_%$%tl266644266839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e266642266832%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd266643266836%_))
                                                          (let ((_%$%e266645266842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd266643266836%_))))
                    (let ((_%$%hd266646266846%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e266645266842%_)))
                          (_%$%tl266647266849%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e266645266842%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd266646266846%_))
                          (if (let ((__tmp270179 |gxc[1]#_g270180_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp270179
                                 _%$%hd266646266846%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl266647266849%_))
                                  (let ((_%$%e266648266852%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl266647266849%_))))
                                    (let ((_%$%hd266649266856%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e266648266852%_)))
                                          (_%$%tl266650266859%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e266648266852%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl266650266859%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl266644266839%_))
                                              (let ((_%$%e266651266862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl266644266839%_))))
                                                (let ((_%$%hd266652266866%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e266651266862%_)))
                                                      (_%$%tl266653266869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e266651266862%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd266652266866%_))
                                                      (let ((_%$%e266654266872%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd266652266866%_))))
                (if (equal? _%$%e266654266872%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl266653266869%_))
                        (let ((_%$%e266655266876%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl266653266869%_))))
                          (let ((_%$%hd266656266880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e266655266876%_)))
                                (_%$%tl266657266883%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e266655266876%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd266656266880%_))
                                (let ((_%$%e266658266886%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd266656266880%_))))
                                  (let ((_%$%hd266659266890%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e266658266886%_)))
                                        (_%$%tl266660266893%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e266658266886%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd266659266890%_))
                                        (if (let ((__tmp270181
                                                   |gxc[1]#_g270182_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp270181
                                               _%$%hd266659266890%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl266660266893%_))
                                                (let ((_%$%e266661266896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl266660266893%_))))
                                                  (let ((_%$%hd266662266900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e266661266896%_)))
                                                        (_%$%tl266663266903%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e266661266896%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl266663266903%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl266657266883%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd266649266856%_))
                        (cons _%$%hd266649266856%_
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'make-!signature))
                                          (cons 'return:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd266623266768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd266662266900%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g266589266669%_ _%$%g266590266673%_))
                (_%$%g266589266669%_ _%$%g266590266673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g266589266669%_
                                                 _%$%g266590266673%_))
                                            (_%$%g266589266669%_
                                             _%$%g266590266673%_))
                                        (_%$%g266589266669%_
                                         _%$%g266590266673%_))))
                                (_%$%g266589266669%_ _%$%g266590266673%_))))
                        (_%$%g266589266669%_ _%$%g266590266673%_))
                    (_%$%g266589266669%_ _%$%g266590266673%_)))
              (_%$%g266589266669%_ _%$%g266590266673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g266589266669%_
                                               _%$%g266590266673%_))
                                          (_%$%g266589266669%_
                                           _%$%g266590266673%_))))
                                  (_%$%g266589266669%_ _%$%g266590266673%_))
                              (_%$%g266589266669%_ _%$%g266590266673%_))
                          (_%$%g266589266669%_ _%$%g266590266673%_))))
                  (_%$%g266589266669%_ _%$%g266590266673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g266589266669%_
                                                   _%$%g266590266673%_))
                                              (_%$%g266589266669%_
                                               _%$%g266590266673%_)))
                                        (_%$%g266589266669%_
                                         _%$%g266590266673%_))))
                                (_%$%g266589266669%_ _%$%g266590266673%_))
                            (_%$%g266589266669%_ _%$%g266590266673%_))))
                    (_%$%g266589266669%_ _%$%g266590266673%_))
                (_%$%g266589266669%_ _%$%g266590266673%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g266589266669%_
                                                     _%$%g266590266673%_))))
                                            (_%$%g266589266669%_
                                             _%$%g266590266673%_))))
                                    (_%$%g266589266669%_ _%$%g266590266673%_))
                                (_%$%g266589266669%_ _%$%g266590266673%_)))
                          (_%$%g266589266669%_ _%$%g266590266673%_))))
                  (_%$%g266589266669%_ _%$%g266590266673%_))
              (_%$%g266589266669%_ _%$%g266590266673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g266589266669%_
                                               _%$%g266590266673%_))
                                          (_%$%g266589266669%_
                                           _%$%g266590266673%_))
                                      (_%$%g266589266669%_
                                       _%$%g266590266673%_))))
                              (_%$%g266589266669%_ _%$%g266590266673%_))))
                      (_%$%g266589266669%_ _%$%g266590266673%_))
                  (_%$%g266589266669%_ _%$%g266590266673%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g266589266669%_
                                                     _%$%g266590266673%_))))
                                            (_%$%g266589266669%_
                                             _%$%g266590266673%_))
                                        (_%$%g266589266669%_
                                         _%$%g266590266673%_))))
                                (_%$%g266589266669%_ _%$%g266590266673%_))
                            (_%$%g266589266669%_ _%$%g266590266673%_))
                        (_%$%g266589266669%_ _%$%g266590266673%_))))
                (_%$%g266589266669%_ _%$%g266590266673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g266589266669%_
                                                 _%$%g266590266673%_))
                                            (_%$%g266589266669%_
                                             _%$%g266590266673%_)))
                                      (_%$%g266589266669%_
                                       _%$%g266590266673%_))))
                              (_%$%g266589266669%_ _%$%g266590266673%_))))
                      (_%$%g266589266669%_ _%$%g266590266673%_)))))
          (_%$%g266588266971%_ _%sig266586%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx267743%_)
        (let* ((_%$%g267746267764%_
                (lambda (_%$%g267747267760%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267747267760%_))))
               (_%$%g267745267819%_
                (lambda (_%$%g267747267768%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267747267768%_))
                      (let ((_%$%e267750267771%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267747267768%_))))
                        (let ((_%$%hd267751267775%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267750267771%_)))
                              (_%$%tl267752267778%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267750267771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267752267778%_))
                              (let ((_%$%e267753267781%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267752267778%_))))
                                (let ((_%$%hd267754267785%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267753267781%_)))
                                      (_%$%tl267755267788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267753267781%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267755267788%_))
                                      (let ((_%$%e267756267791%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl267755267788%_))))
                                        (let ((_%$%hd267757267795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267756267791%_)))
                                              (_%$%tl267758267798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267756267791%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267758267798%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd267754267785%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd267757267795%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx267743%_
                                                     _%$%hd267754267785%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx267743%_
                                                     _%$%hd267757267795%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd267754267785%_
                                                                (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'make-!primitive-predicate))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd267757267795%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g267746267764%_
                                                   _%$%g267747267768%_))
                                              (_%$%g267746267764%_
                                               _%$%g267747267768%_))))
                                      (_%$%g267746267764%_
                                       _%$%g267747267768%_))))
                              (_%$%g267746267764%_ _%$%g267747267768%_))))
                      (_%$%g267746267764%_ _%$%g267747267768%_)))))
          (_%$%g267745267819%_ _%stx267743%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx267823%_)
        (let* ((_%$%g267826267850%_
                (lambda (_%$%g267827267846%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267827267846%_))))
               (_%$%g267825268131%_
                (lambda (_%$%g267827267854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267827267854%_))
                      (let ((_%$%e267830267857%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g267827267854%_))))
                        (let ((_%$%hd267831267861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267830267857%_)))
                              (_%$%tl267832267864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267830267857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267832267864%_))
                              (let ((_%$%e267833267867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl267832267864%_))))
                                (let ((_%$%hd267834267871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267833267867%_)))
                                      (_%$%tl267835267874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267833267867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl267835267874%_))
                                      (let ((_g270183_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl267835267874%_
                                                '0))))
                                        (begin
                                          (let ((_g270184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g270183_)
                                                       (##values-length
                                                        _g270183_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g270184_ 2)))
                                                (error "Context expects 2 values"
                                                       _g270184_)))
                                          (let ((_%$%target267836267877%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g270183_ 0)))
                                                (_%$%tl267838267880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g270183_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl267838267880%_))
                                                (letrec ((_%$%loop267839267883%_
                                                          (lambda (_%$%hd267837267887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature267843267890%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd267837267887%_))
                        (let ((_%$%e267840267892%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd267837267887%_))))
                          (let ((_%$%lp-hd267841267896%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e267840267892%_)))
                                (_%$%lp-tl267842267899%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e267840267892%_))))
                            (_%$%loop267839267883%_
                             _%$%lp-tl267842267899%_
                             (cons _%$%lp-hd267841267896%_
                                   _%$%signature267843267890%_))))
                        (let ((_%$%signature267844267902%_
                               (reverse _%$%signature267843267890%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd267834267871%_))
                              (let* ((_%$%g267925267940%_
                                      (lambda (_%$%g267926267936%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g267926267936%_))))
                                     (_%$%g267924268119%_
                                      (lambda (_%$%g267926267944%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g267926267944%_))
                                            (let ((_%$%e267929267947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g267926267944%_))))
                                              (let ((_%$%hd267930267951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e267929267947%_)))
                                                    (_%$%tl267931267954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e267929267947%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl267931267954%_))
                                                    (let ((_%$%e267932267957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl267931267954%_))))
                                                      (let ((_%$%hd267933267961%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e267932267957%_)))
                    (_%$%tl267934267964%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e267932267957%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl267934267964%_))
                    (let* ((_%$%g267985267993%_
                            (lambda (_%$%g267986267989%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g267986267989%_))))
                           (_%$%g267984268115%_
                            (lambda (_%$%g267986267997%_)
                              (let* ((_%unchecked268013%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd267933267961%_))
                                     (_%$%g268016268024%_
                                      (lambda (_%$%g268017268020%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g268017268020%_))))
                                     (_%$%g268015268047%_
                                      (lambda (_%$%g268017268028%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g267986267997%_
                                                    (cons _%$%g268017268028%_
                                                          '()))))))
                                (_%$%g268015268047%_
                                 (if _%unchecked268013%_
                                     (let* ((_%$%g268051268066%_
                                             (lambda (_%$%g268052268062%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g268052268062%_))))
                                            (_%$%g268050268111%_
                                             (lambda (_%$%g268052268070%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g268052268070%_))
                                                   (let ((_%$%e268055268073%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g268052268070%_))))
                                                     (let ((_%$%hd268056268077%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e268055268073%_)))
                                                           (_%$%tl268057268080%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e268055268073%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl268057268080%_))
                                                           (let ((_%$%e268058268083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl268057268080%_))))
                     (let ((_%$%hd268059268087%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e268058268083%_)))
                           (_%$%tl268060268090%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e268058268083%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl268060268090%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd268056268077%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd267930267951%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd268059268087%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g268051268066%_ _%$%g268052268070%_))))
                   (_%$%g268051268066%_ _%$%g268052268070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g268051268066%_
                                                    _%$%g268052268070%_)))))
                                       (_%$%g268050268111%_
                                        _%unchecked268013%_))
                                     '(begin)))))))
                      (_%$%g267984268115%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd267834267871%_
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-lambda))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%$%hd267930267951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd267933267961%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g267925267940%_ _%$%g267926267944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g267925267940%_
                                                     _%$%g267926267944%_))))
                                            (_%$%g267925267940%_
                                             _%$%g267926267944%_)))))
                                (_%$%g267924268119%_
                                 (|gxc[1]#parse-signature|
                                  _%stx267823%_
                                  _%$%hd267834267871%_
                                  (let ((__tmp270185
                                         (lambda (_%$%g268122268125%_
                                                  _%$%g268123268128%_)
                                           (cons _%$%g268122268125%_
                                                 _%$%g268123268128%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp270185
                                     '()
                                     _%$%signature267844267902%_)))))
                              (_%$%g267826267850%_ _%$%g267827267854%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop267839267883%_
                                                   _%$%target267836267877%_
                                                   '()))
                                                (_%$%g267826267850%_
                                                 _%$%g267827267854%_)))))
                                      (_%$%g267826267850%_
                                       _%$%g267827267854%_))))
                              (_%$%g267826267850%_ _%$%g267827267854%_))))
                      (_%$%g267826267850%_ _%$%g267827267854%_)))))
          (_%$%g267825268131%_ _%stx267823%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx268136%_)
        (let* ((_%$%g268139268163%_
                (lambda (_%$%g268140268159%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g268140268159%_))))
               (_%$%g268138269038%_
                (lambda (_%$%g268140268167%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g268140268167%_))
                      (let ((_%$%e268143268170%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g268140268167%_))))
                        (let ((_%$%hd268144268174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268143268170%_)))
                              (_%$%tl268145268177%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268143268170%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl268145268177%_))
                              (let ((_%$%e268146268180%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl268145268177%_))))
                                (let ((_%$%hd268147268184%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268146268180%_)))
                                      (_%$%tl268148268187%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268146268180%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl268148268187%_))
                                      (let ((_g270186_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl268148268187%_
                                                '0))))
                                        (begin
                                          (let ((_g270187_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g270186_)
                                                       (##values-length
                                                        _g270186_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g270187_ 2)))
                                                (error "Context expects 2 values"
                                                       _g270187_)))
                                          (let ((_%$%target268149268190%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g270186_ 0)))
                                                (_%$%tl268151268193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g270186_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl268151268193%_))
                                                (letrec ((_%$%loop268152268196%_
                                                          (lambda (_%$%hd268150268200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature268156268203%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd268150268200%_))
                        (let ((_%$%e268153268205%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd268150268200%_))))
                          (let ((_%$%lp-hd268154268209%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268153268205%_)))
                                (_%$%lp-tl268155268212%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268153268205%_))))
                            (_%$%loop268152268196%_
                             _%$%lp-tl268155268212%_
                             (cons _%$%lp-hd268154268209%_
                                   _%$%case-signature268156268203%_))))
                        (let ((_%$%case-signature268157268215%_
                               (reverse _%$%case-signature268156268203%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd268147268184%_))
                              (let* ((_%signatures268251%_
                                      (map (lambda (_%$%g268237268239%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx268136%_
                                              _%$%hd268147268184%_
                                              _%$%g268237268239%_))
                                           (let ((__tmp270188
                                                  (lambda (_%$%g268242268245%_
                                                           _%$%g268243268248%_)
                                                    (cons _%$%g268242268245%_
                                                          _%$%g268243268248%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp270188
                                              '()
                                              _%$%case-signature268157268215%_))))
                                     (_%$%g268254268280%_
                                      (lambda (_%$%g268255268276%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g268255268276%_))))
                                     (_%$%g268253269034%_
                                      (lambda (_%$%g268255268284%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g268255268284%_))
                                            (let ((_g270189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g268255268284%_
                                                      '0))))
                                              (begin
                                                (let ((_g270190_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g270189_)
                                                             (##values-length
                                                              _g270189_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g270190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g270190_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target268258268287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g270189_
                                                          0)))
                                                      (_%$%tl268260268290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g270189_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl268260268290%_))
                                                      (letrec ((_%$%loop268261268293%_
                                                                (lambda (_%$%hd268259268297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig268265268300%_
                                 _%$%arity268266268301%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd268259268297%_))
                              (let ((_%$%e268262268303%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd268259268297%_))))
                                (let ((_%$%lp-hd268263268307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e268262268303%_)))
                                      (_%$%lp-tl268264268310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e268262268303%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd268263268307%_))
                                      (let ((_%$%e268269268313%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd268263268307%_))))
                                        (let ((_%$%hd268270268317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268269268313%_)))
                                              (_%$%tl268271268320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268269268313%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl268271268320%_))
                                              (let ((_%$%e268272268323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl268271268320%_))))
                                                (let ((_%$%hd268273268327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e268272268323%_)))
                                                      (_%$%tl268274268330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e268272268323%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl268274268330%_))
                                                      (_%$%loop268261268293%_
                                                       _%$%lp-tl268264268310%_
                                                       (cons _%$%hd268273268327%_
                                                             _%$%sig268265268300%_)
                                                       (cons _%$%hd268270268317%_
                                                             _%$%arity268266268301%_))
                                                      (_%$%g268254268280%_
                                                       _%$%g268255268284%_))))
                                              (_%$%g268254268280%_
                                               _%$%g268255268284%_))))
                                      (_%$%g268254268280%_
                                       _%$%g268255268284%_))))
                              (let ((_%$%sig268267268333%_
                                     (reverse _%$%sig268265268300%_))
                                    (_%$%arity268268268335%_
                                     (reverse _%$%arity268266268301%_)))
                                (let* ((_%$%g268356268364%_
                                        (lambda (_%$%g268357268360%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g268357268360%_))))
                                       (_%$%g268355269019%_
                                        (lambda (_%$%g268357268368%_)
                                          (let* ((_%$%g268384268392%_
                                                  (lambda (_%$%g268385268388%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g268385268388%_))))
                                                 (_%$%g268383268414%_
                                                  (lambda (_%$%g268385268396%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g268357268368%_
                                                                (cons _%$%g268385268396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g268383268414%_
                                             (let ((_g270191_
                                                    (let _%loop268418%_ ((_%rest268421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures268251%_)
                                 (_%unchecked-proc268423%_ '#f)
                                 (_%unchecked-clauses268424%_ '()))
              (let* ((_%$%rest268425268433%_ _%rest268421%_)
                     (_%$%else268427268445%_
                      (lambda ()
                        (values _%unchecked-proc268423%_
                                (reverse! _%unchecked-clauses268424%_))))
                     (_%$%K268429268886%_
                      (lambda (_%rest268449%_ _%hd268451%_)
                        (let* ((_%$%g268453268540%_
                                (lambda (_%$%g268454268536%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g268454268536%_))))
                               (_%$%g268452268882%_
                                (lambda (_%$%g268454268544%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g268454268544%_))
                                      (let ((_%$%e268461268547%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g268454268544%_))))
                                        (let ((_%$%hd268462268551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268461268547%_)))
                                              (_%$%tl268463268554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268461268547%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl268463268554%_))
                                              (let ((_%$%e268464268557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl268463268554%_))))
                                                (let ((_%$%hd268465268561%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e268464268557%_)))
                                                      (_%$%tl268466268564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e268464268557%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd268465268561%_))
                                                      (let ((_%$%e268467268567%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd268465268561%_))))
                (let ((_%$%hd268468268571%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e268467268567%_)))
                      (_%$%tl268469268574%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e268467268567%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl268469268574%_))
                      (let ((_%$%e268470268577%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl268469268574%_))))
                        (let ((_%$%hd268471268581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268470268577%_)))
                              (_%$%tl268472268584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268470268577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd268471268581%_))
                              (let ((_%$%e268473268587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd268471268581%_))))
                                (if (equal? _%$%e268473268587%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl268472268584%_))
                                        (let ((_%$%e268474268591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl268472268584%_))))
                                          (let ((_%$%hd268475268595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268474268591%_)))
                                                (_%$%tl268476268598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268474268591%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd268475268595%_))
                                                (let ((_%$%e268477268601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd268475268595%_))))
                                                  (let ((_%$%hd268478268605%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e268477268601%_)))
                                                        (_%$%tl268479268608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e268477268601%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd268478268605%_))
                                                        (if (let ((__tmp270193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g270194_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp270193 _%$%hd268478268605%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl268479268608%_))
                        (let ((_%$%e268480268611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl268479268608%_))))
                          (let ((_%$%hd268481268615%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268480268611%_)))
                                (_%$%tl268482268618%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268480268611%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl268482268618%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl268476268598%_))
                                    (let ((_%$%e268483268621%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl268476268598%_))))
                                      (let ((_%$%hd268484268625%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e268483268621%_)))
                                            (_%$%tl268485268628%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e268483268621%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd268484268625%_))
                                            (let ((_%$%e268486268631%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd268484268625%_))))
                                              (if (equal? _%$%e268486268631%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl268485268628%_))
                                                      (let ((_%$%e268487268635%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl268485268628%_))))
                (let ((_%$%hd268488268639%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e268487268635%_)))
                      (_%$%tl268489268642%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e268487268635%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd268488268639%_))
                      (let ((_%$%e268490268645%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd268488268639%_))))
                        (let ((_%$%hd268491268649%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e268490268645%_)))
                              (_%$%tl268492268652%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e268490268645%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd268491268649%_))
                              (if (let ((__tmp270195 |gxc[1]#_g270196_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp270195
                                     _%$%hd268491268649%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl268492268652%_))
                                      (let ((_%$%e268493268655%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl268492268652%_))))
                                        (let ((_%$%hd268494268659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268493268655%_)))
                                              (_%$%tl268495268662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268493268655%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl268495268662%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl268489268642%_))
                                                  (let ((_%$%e268496268665%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl268489268642%_))))
                                                    (let ((_%$%hd268497268669%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e268496268665%_)))
                                                          (_%$%tl268498268672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e268496268665%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd268497268669%_))
                                                          (let ((_%$%e268499268675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd268497268669%_))))
                    (if (equal? _%$%e268499268675%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl268498268672%_))
                            (let ((_%$%e268500268679%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl268498268672%_))))
                              (let ((_%$%hd268501268683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e268500268679%_)))
                                    (_%$%tl268502268686%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e268500268679%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd268501268683%_))
                                    (let ((_%$%e268503268689%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd268501268683%_))))
                                      (let ((_%$%hd268504268693%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e268503268689%_)))
                                            (_%$%tl268505268696%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e268503268689%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd268504268693%_))
                                            (if (let ((__tmp270197
                                                       |gxc[1]#_g270198_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp270197
                                                   _%$%hd268504268693%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl268505268696%_))
                                                    (let ((_%$%e268506268699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl268505268696%_))))
                                                      (let ((_%$%hd268507268703%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e268506268699%_)))
                    (_%$%tl268508268706%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e268506268699%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl268508268706%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl268502268686%_))
                        (let ((_%$%e268509268709%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl268502268686%_))))
                          (let ((_%$%hd268510268713%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268509268709%_)))
                                (_%$%tl268511268716%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268509268709%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd268510268713%_))
                                (let ((_%$%e268512268719%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd268510268713%_))))
                                  (if (equal? _%$%e268512268719%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl268511268716%_))
                                          (let ((_%$%e268513268723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl268511268716%_))))
                                            (let ((_%$%hd268514268727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e268513268723%_)))
                                                  (_%$%tl268515268730%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e268513268723%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd268514268727%_))
                                                  (let ((_%$%e268516268733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd268514268727%_))))
                                                    (let ((_%$%hd268517268737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e268516268733%_)))
                                                          (_%$%tl268518268740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e268516268733%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd268517268737%_))
                                                          (if (let ((__tmp270199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g270200_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp270199
                         _%$%hd268517268737%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl268518268740%_))
                          (let ((_%$%e268519268743%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl268518268740%_))))
                            (let ((_%$%hd268520268747%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e268519268743%_)))
                                  (_%$%tl268521268750%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e268519268743%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl268521268750%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl268515268730%_))
                                      (let ((_%$%e268522268753%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl268515268730%_))))
                                        (let ((_%$%hd268523268757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e268522268753%_)))
                                              (_%$%tl268524268760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e268522268753%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd268523268757%_))
                                              (let ((_%$%e268525268763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd268523268757%_))))
                                                (if (equal? _%$%e268525268763%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl268524268760%_))
                                                        (let ((_%$%e268526268767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl268524268760%_))))
                  (let ((_%$%hd268527268771%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e268526268767%_)))
                        (_%$%tl268528268774%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e268526268767%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd268527268771%_))
                        (let ((_%$%e268529268777%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd268527268771%_))))
                          (let ((_%$%hd268530268781%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e268529268777%_)))
                                (_%$%tl268531268784%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e268529268777%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd268530268781%_))
                                (if (let ((__tmp270201 |gxc[1]#_g270202_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp270201
                                       _%$%hd268530268781%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl268531268784%_))
                                        (let ((_%$%e268532268787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl268531268784%_))))
                                          (let ((_%$%hd268533268791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e268532268787%_)))
                                                (_%$%tl268534268794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e268532268787%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl268534268794%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl268528268774%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl268466268564%_))
                                                        (let ((_%clause268874%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd268462268551%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!signature))
                                                           (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%hd268494268659%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd268533268791%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked268876%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd268520268747%_))))
                  (_%loop268418%_
                   _%rest268449%_
                   (let ((_%$e268878%_ _%unchecked268876%_))
                     (if _%$e268878%_ _%$e268878%_ _%unchecked-proc268423%_))
                   (cons _%clause268874%_ _%unchecked-clauses268424%_)))
                (_%$%g268453268540%_ _%$%g268454268544%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g268453268540%_
                                                     _%$%g268454268544%_))
                                                (_%$%g268453268540%_
                                                 _%$%g268454268544%_))))
                                        (_%$%g268453268540%_
                                         _%$%g268454268544%_))
                                    (_%$%g268453268540%_ _%$%g268454268544%_))
                                (_%$%g268453268540%_ _%$%g268454268544%_))))
                        (_%$%g268453268540%_ _%$%g268454268544%_))))
                (_%$%g268453268540%_ _%$%g268454268544%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g268453268540%_
                                                     _%$%g268454268544%_)))
                                              (_%$%g268453268540%_
                                               _%$%g268454268544%_))))
                                      (_%$%g268453268540%_
                                       _%$%g268454268544%_))
                                  (_%$%g268453268540%_ _%$%g268454268544%_))))
                          (_%$%g268453268540%_ _%$%g268454268544%_))
                      (_%$%g268453268540%_ _%$%g268454268544%_))
                  (_%$%g268453268540%_ _%$%g268454268544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g268453268540%_
                                                   _%$%g268454268544%_))))
                                          (_%$%g268453268540%_
                                           _%$%g268454268544%_))
                                      (_%$%g268453268540%_
                                       _%$%g268454268544%_)))
                                (_%$%g268453268540%_ _%$%g268454268544%_))))
                        (_%$%g268453268540%_ _%$%g268454268544%_))
                    (_%$%g268453268540%_ _%$%g268454268544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g268453268540%_
                                                     _%$%g268454268544%_))
                                                (_%$%g268453268540%_
                                                 _%$%g268454268544%_))
                                            (_%$%g268453268540%_
                                             _%$%g268454268544%_))))
                                    (_%$%g268453268540%_
                                     _%$%g268454268544%_))))
                            (_%$%g268453268540%_ _%$%g268454268544%_))
                        (_%$%g268453268540%_ _%$%g268454268544%_)))
                  (_%$%g268453268540%_ _%$%g268454268544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g268453268540%_
                                                   _%$%g268454268544%_))
                                              (_%$%g268453268540%_
                                               _%$%g268454268544%_))))
                                      (_%$%g268453268540%_
                                       _%$%g268454268544%_))
                                  (_%$%g268453268540%_ _%$%g268454268544%_))
                              (_%$%g268453268540%_ _%$%g268454268544%_))))
                      (_%$%g268453268540%_ _%$%g268454268544%_))))
              (_%$%g268453268540%_ _%$%g268454268544%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g268453268540%_
                                                   _%$%g268454268544%_)))
                                            (_%$%g268453268540%_
                                             _%$%g268454268544%_))))
                                    (_%$%g268453268540%_ _%$%g268454268544%_))
                                (_%$%g268453268540%_ _%$%g268454268544%_))))
                        (_%$%g268453268540%_ _%$%g268454268544%_))
                    (_%$%g268453268540%_ _%$%g268454268544%_))
                (_%$%g268453268540%_ _%$%g268454268544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g268453268540%_
                                                 _%$%g268454268544%_))))
                                        (_%$%g268453268540%_
                                         _%$%g268454268544%_))
                                    (_%$%g268453268540%_ _%$%g268454268544%_)))
                              (_%$%g268453268540%_ _%$%g268454268544%_))))
                      (_%$%g268453268540%_ _%$%g268454268544%_))))
              (_%$%g268453268540%_ _%$%g268454268544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g268453268540%_
                                               _%$%g268454268544%_))))
                                      (_%$%g268453268540%_
                                       _%$%g268454268544%_)))))
                          (_%$%g268452268882%_ _%hd268451%_)))))
                (if (pair? _%$%rest268425268433%_)
                    (let ((_%$%hd268430268890%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest268425268433%_)))
                          (_%$%tl268431268893%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest268425268433%_))))
                      (let* ((_%hd268896%_ _%$%hd268430268890%_)
                             (_%rest268899%_ _%$%tl268431268893%_))
                        (_%$%K268429268886%_ _%rest268899%_ _%hd268896%_)))
                    (_%$%else268427268445%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g270192_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g270191_)
                                                              (##values-length
                                                               _g270191_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g270192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g270192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc268902%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g270191_
                                                           0)))
                                                       (_%unchecked-clauses268904%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g270191_
                                                           1))))
                                                   (if _%unchecked-proc268902%_
                                                       (let* ((_%$%g268906268930%_
                                                               (lambda (_%$%g268907268926%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g268907268926%_))))
                      (_%$%g268905269015%_
                       (lambda (_%$%g268907268934%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g268907268934%_))
                             (let ((_%$%e268910268937%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g268907268934%_))))
                               (let ((_%$%hd268911268941%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e268910268937%_)))
                                     (_%$%tl268912268944%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e268910268937%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl268912268944%_))
                                     (let ((_%$%e268913268947%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl268912268944%_))))
                                       (let ((_%$%hd268914268951%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e268913268947%_)))
                                             (_%$%tl268915268954%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e268913268947%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd268914268951%_))
                                             (let ((_g270203_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd268914268951%_
                                                       '0))))
                                               (begin
                                                 (let ((_g270204_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g270203_)
                                                              (##values-length
                                                               _g270203_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g270204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g270204_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target268916268957%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g270203_
                                                           0)))
                                                       (_%$%tl268918268960%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g270203_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl268918268960%_))
                                                       (letrec ((_%$%loop268919268963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd268917268967%_
                                  _%$%clause268923268970%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd268917268967%_))
                               (let ((_%$%e268920268972%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd268917268967%_))))
                                 (let ((_%$%lp-hd268921268976%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e268920268972%_)))
                                       (_%$%lp-tl268922268979%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e268920268972%_))))
                                   (_%$%loop268919268963%_
                                    _%$%lp-tl268922268979%_
                                    (cons _%$%lp-hd268921268976%_
                                          _%$%clause268923268970%_))))
                               (let ((_%$%clause268924268982%_
                                      (reverse _%$%clause268923268970%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl268915268954%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd268911268941%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp270205
                                        (lambda (_%$%g269006269009%_
                                                 _%$%g269007269012%_)
                                          (cons _%$%g269006269009%_
                                                _%$%g269007269012%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp270205
                                    '()
                                    _%$%clause268924268982%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g268906268930%_
                                      _%$%g268907268934%_)))))))
                 (_%$%loop268919268963%_ _%$%target268916268957%_ '()))
               (_%$%g268906268930%_ _%$%g268907268934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g268906268930%_
                                              _%$%g268907268934%_))))
                                     (_%$%g268906268930%_
                                      _%$%g268907268934%_))))
                             (_%$%g268906268930%_ _%$%g268907268934%_)))))
                 (_%$%g268905269015%_
                  (list _%unchecked-proc268902%_ _%unchecked-clauses268904%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g268355269019%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd268147268184%_
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!primitive-case-lambda))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '@list))
                               (begin
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-check-splice-targets
                                    _%$%sig268267268333%_
                                    _%$%arity268268268335%_))
                                 (let ((__tmp270206
                                        (lambda (_%$%g269022269026%_
                                                 _%$%g269023269029%_
                                                 _%$%g269024269031%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g269023269029%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g269022269026%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g269024269031%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp270206
                                    '()
                                    _%$%sig268267268333%_
                                    _%$%arity268268268335%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop268261268293%_ _%$%target268258268287%_ '() '()))
              (_%$%g268254268280%_ _%$%g268255268284%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g268254268280%_
                                             _%$%g268255268284%_)))))
                                (_%$%g268253269034%_ _%signatures268251%_))
                              (_%$%g268139268163%_ _%$%g268140268167%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop268152268196%_
                                                   _%$%target268149268190%_
                                                   '()))
                                                (_%$%g268139268163%_
                                                 _%$%g268140268167%_)))))
                                      (_%$%g268139268163%_
                                       _%$%g268140268167%_))))
                              (_%$%g268139268163%_ _%$%g268140268167%_))))
                      (_%$%g268139268163%_ _%$%g268140268167%_)))))
          (_%$%g268138269038%_ _%stx268136%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx269046%_)
        (let* ((_%__stx270026270027%_ _%$stx269046%_)
               (_%$%g269052269112%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx270026270027%_)))))
          (let ((_%__kont270029270030%_
                 (lambda (_%$%g269054269334%_ _%$%g269055269336%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g269055269336%_ '()))
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
                                                       (cons _%$%g269055269336%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g269054269334%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont270031270032%_
                 (lambda (_%$%g269069269259%_
                          _%$%g269070269261%_
                          _%$%g269071269262%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g269071269262%_ '()))
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
                                                       (cons _%$%g269071269262%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g269070269261%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g269069269259%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont270033270034%_
                 (lambda (_%$%g269088269173%_
                          _%$%g269089269175%_
                          _%$%g269090269176%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g269090269176%_ '()))
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
                                                       (cons _%$%g269090269176%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g269089269175%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g269088269173%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx270026270027%_))
                (let ((_%$%e269056269290%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx270026270027%_))))
                  (let ((_%$%tl269058269297%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e269056269290%_)))
                        (_%$%hd269057269294%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e269056269290%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl269058269297%_))
                        (let ((_%$%e269059269300%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl269058269297%_))))
                          (let ((_%$%tl269061269307%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e269059269300%_)))
                                (_%$%hd269060269304%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e269059269300%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd269060269304%_))
                                (let ((_%$%e269062269310%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd269060269304%_))))
                                  (if (equal? _%$%e269062269310%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl269061269307%_))
                                          (let ((_%$%e269063269314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl269061269307%_))))
                                            (let ((_%$%tl269065269321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e269063269314%_)))
                                                  (_%$%hd269064269318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e269063269314%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl269065269321%_))
                                                  (let ((_%$%e269066269324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl269065269321%_))))
                                                    (let ((_%$%tl269068269331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e269066269324%_)))
                                                          (_%$%hd269067269328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e269066269324%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl269068269331%_))
                                                          (_%__kont270029270030%_
                                                           _%$%hd269067269328%_
                                                           _%$%hd269064269318%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g269052269112%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g269052269112%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g269052269112%_)))
                                      (if (equal? _%$%e269062269310%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl269061269307%_))
                                              (let ((_%$%e269079269229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl269061269307%_))))
                                                (let ((_%$%tl269081269236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e269079269229%_)))
                                                      (_%$%hd269080269233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e269079269229%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl269081269236%_))
                                                      (let ((_%$%e269082269239%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl269081269236%_))))
                (let ((_%$%tl269084269246%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e269082269239%_)))
                      (_%$%hd269083269243%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e269082269239%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl269084269246%_))
                      (let ((_%$%e269085269249%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl269084269246%_))))
                        (let ((_%$%tl269087269256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269085269249%_)))
                              (_%$%hd269086269253%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269085269249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl269087269256%_))
                              (_%__kont270031270032%_
                               _%$%hd269086269253%_
                               _%$%hd269083269243%_
                               _%$%hd269080269233%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g269052269112%_)))))
                      (let () (declare (not safe)) (_%$%g269052269112%_)))))
              (let () (declare (not safe)) (_%$%g269052269112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g269052269112%_)))
                                          (if (equal? _%$%e269062269310%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl269061269307%_))
                                                  (let ((_%$%e269098269143%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl269061269307%_))))
                                                    (let ((_%$%tl269100269150%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e269098269143%_)))
                                                          (_%$%hd269099269147%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e269098269143%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl269100269150%_))
                                                          (let ((_%$%e269101269153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl269100269150%_))))
                    (let ((_%$%tl269103269160%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e269101269153%_)))
                          (_%$%hd269102269157%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e269101269153%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl269103269160%_))
                          (let ((_%$%e269104269163%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl269103269160%_))))
                            (let ((_%$%tl269106269170%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e269104269163%_)))
                                  (_%$%hd269105269167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e269104269163%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl269106269170%_))
                                  (_%__kont270033270034%_
                                   _%$%hd269105269167%_
                                   _%$%hd269102269157%_
                                   _%$%hd269099269147%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g269052269112%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g269052269112%_)))))
                  (let () (declare (not safe)) (_%$%g269052269112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g269052269112%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g269052269112%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g269052269112%_)))))
                        (let () (declare (not safe)) (_%$%g269052269112%_)))))
                (let () (declare (not safe)) (_%$%g269052269112%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx269358%_)
        (let* ((_%$%g269362269382%_
                (lambda (_%$%g269363269378%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g269363269378%_))))
               (_%$%g269361269451%_
                (lambda (_%$%g269363269386%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g269363269386%_))
                      (let ((_%$%e269365269389%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g269363269386%_))))
                        (let ((_%$%hd269366269393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e269365269389%_)))
                              (_%$%tl269367269396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e269365269389%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl269367269396%_))
                              (let ((_g270207_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl269367269396%_
                                        '0))))
                                (begin
                                  (let ((_g270208_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g270207_)
                                               (##values-length _g270207_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g270208_ 2)))
                                        (error "Context expects 2 values"
                                               _g270208_)))
                                  (let ((_%$%target269368269399%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270207_ 0)))
                                        (_%$%tl269370269402%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270207_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl269370269402%_))
                                        (letrec ((_%$%loop269371269405%_
                                                  (lambda (_%$%hd269369269409%_
                                                           _%$%decl269375269412%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd269369269409%_))
                                                        (let ((_%$%e269372269414%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd269369269409%_))))
                  (let ((_%$%lp-hd269373269418%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e269372269414%_)))
                        (_%$%lp-tl269374269421%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e269372269414%_))))
                    (_%$%loop269371269405%_
                     _%$%lp-tl269374269421%_
                     (cons _%$%lp-hd269373269418%_ _%$%decl269375269412%_))))
                (let ((_%$%decl269376269424%_
                       (reverse _%$%decl269375269412%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp270209
                               (lambda (_%$%g269442269445%_
                                        _%$%g269443269448%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g269442269445%_)
                                       _%$%g269443269448%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp270209
                           '()
                           _%$%decl269376269424%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop269371269405%_
                                           _%$%target269368269399%_
                                           '()))
                                        (_%$%g269362269382%_
                                         _%$%g269363269386%_)))))
                              (_%$%g269362269382%_ _%$%g269363269386%_))))
                      (_%$%g269362269382%_ _%$%g269363269386%_)))))
          (_%$%g269361269451%_ _%$stx269358%_))))))
