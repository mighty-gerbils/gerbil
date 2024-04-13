(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g207183_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207190_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207192_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207194_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207196_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207198_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207210_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207212_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207214_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207216_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207218_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx200601%_)
        (let* ((_%g200605200623%_
                (lambda (_%g200606200619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200606200619%_))))
               (_%g200604200678%_
                (lambda (_%g200606200627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200606200627%_))
                      (let ((_%e200609200630%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200606200627%_))))
                        (let ((_%hd200610200634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200609200630%_)))
                              (_%tl200611200637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200609200630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200611200637%_))
                              (let ((_%e200612200640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200611200637%_))))
                                (let ((_%hd200613200644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200612200640%_)))
                                      (_%tl200614200647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200612200640%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200614200647%_))
                                      (let ((_%e200615200650%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200614200647%_))))
                                        (let ((_%hd200616200654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200615200650%_)))
                                              (_%tl200617200657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200615200650%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200617200657%_))
                                              ((lambda (_%L200660%_
                                                        _%L200662%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L200662%_))
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
                               (cons _%L200662%_ '()))
                         (cons _%L200660%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200605200623%_
                                                      _%g200606200627%_)))
                                               _%hd200616200654%_
                                               _%hd200613200644%_)
                                              (_%g200605200623%_
                                               _%g200606200627%_))))
                                      (_%g200605200623%_ _%g200606200627%_))))
                              (_%g200605200623%_ _%g200606200627%_))))
                      (_%g200605200623%_ _%g200606200627%_)))))
          (_%g200604200678%_ _%$stx200601%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx200682%_)
        (let* ((_%g200686200704%_
                (lambda (_%g200687200700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200687200700%_))))
               (_%g200685200759%_
                (lambda (_%g200687200708%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200687200708%_))
                      (let ((_%e200690200711%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200687200708%_))))
                        (let ((_%hd200691200715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200690200711%_)))
                              (_%tl200692200718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200690200711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200692200718%_))
                              (let ((_%e200693200721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200692200718%_))))
                                (let ((_%hd200694200725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200693200721%_)))
                                      (_%tl200695200728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200693200721%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200695200728%_))
                                      (let ((_%e200696200731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200695200728%_))))
                                        (let ((_%hd200697200735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200696200731%_)))
                                              (_%tl200698200738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200696200731%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200698200738%_))
                                              ((lambda (_%L200741%_
                                                        _%L200743%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L200743%_))
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
                               (cons _%L200743%_ '()))
                         (cons _%L200741%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200686200704%_
                                                      _%g200687200708%_)))
                                               _%hd200697200735%_
                                               _%hd200694200725%_)
                                              (_%g200686200704%_
                                               _%g200687200708%_))))
                                      (_%g200686200704%_ _%g200687200708%_))))
                              (_%g200686200704%_ _%g200687200708%_))))
                      (_%g200686200704%_ _%g200687200708%_)))))
          (_%g200685200759%_ _%$stx200682%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx200763%_)
        (let* ((_%g200767200796%_
                (lambda (_%g200768200792%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200768200792%_))))
               (_%g200766200896%_
                (lambda (_%g200768200800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200768200800%_))
                      (let ((_%e200771200803%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200768200800%_))))
                        (let ((_%hd200772200807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200771200803%_)))
                              (_%tl200773200810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200771200803%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200773200810%_))
                              (let ((_g207161_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200773200810%_
                                        '0))))
                                (begin
                                  (let ((_g207162_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207161_)
                                               (##vector-length _g207161_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207162_ 2)))
                                        (error "Context expects 2 values"
                                               _g207162_)))
                                  (let ((_%target200774200813%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207161_ 0)))
                                        (_%tl200776200816%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207161_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200776200816%_))
                                        (letrec ((_%loop200777200819%_
                                                  (lambda (_%hd200775200823%_
                                                           _%type200781200826%_
                                                           _%symbol200782200828%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200775200823%_))
                                                        (let ((_%e200778200831%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200775200823%_))))
                  (let ((_%lp-hd200779200835%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200778200831%_)))
                        (_%lp-tl200780200838%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200778200831%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd200779200835%_))
                        (let ((_%e200785200841%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd200779200835%_))))
                          (let ((_%hd200786200845%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200785200841%_)))
                                (_%tl200787200848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200785200841%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200787200848%_))
                                (let ((_%e200788200851%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200787200848%_))))
                                  (let ((_%hd200789200855%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200788200851%_)))
                                        (_%tl200790200858%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200788200851%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200790200858%_))
                                        (_%loop200777200819%_
                                         _%lp-tl200780200838%_
                                         (cons _%hd200789200855%_
                                               _%type200781200826%_)
                                         (cons _%hd200786200845%_
                                               _%symbol200782200828%_))
                                        (_%g200767200796%_
                                         _%g200768200800%_))))
                                (_%g200767200796%_ _%g200768200800%_))))
                        (_%g200767200796%_ _%g200768200800%_))))
                (let ((_%type200783200861%_ (reverse _%type200781200826%_))
                      (_%symbol200784200864%_
                       (reverse _%symbol200782200828%_)))
                  ((lambda (_%L200867%_ _%L200869%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L200867%_
                                _%L200869%_))
                             (let ((__tmp207163
                                    (lambda (_%g200884200888%_
                                             _%g200885200891%_
                                             _%g200886200893%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g200885200891%_
                                                        (cons _%g200884200888%_
                                                              '())))
                                            _%g200886200893%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207163
                                '()
                                _%L200867%_
                                _%L200869%_)))))
                   _%type200783200861%_
                   _%symbol200784200864%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200777200819%_
                                           _%target200774200813%_
                                           '()
                                           '()))
                                        (_%g200767200796%_
                                         _%g200768200800%_)))))
                              (_%g200767200796%_ _%g200768200800%_))))
                      (_%g200767200796%_ _%g200768200800%_)))))
          (_%g200766200896%_ _%$stx200763%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx200901%_)
        (let* ((_%__stx206472206473%_ _%$stx200901%_)
               (_%g200906200948%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206472206473%_)))))
          (let ((_%__kont206475206476%_
                 (lambda (_%L201076%_ _%L201078%_ _%L201079%_ _%L201080%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201080%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201079%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L201078%_ '()))
                                           (cons _%L201076%_ '())))))))
                (_%__kont206477206478%_
                 (lambda (_%L200995%_ _%L200997%_ _%L200998%_ _%L200999%_)
                   (cons _%L200999%_
                         (cons _%L200998%_
                               (cons _%L200997%_
                                     (cons _%L200995%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match206511206512%_
                   (lambda (_%e200912201026%_
                            _%hd200913201030%_
                            _%tl200914201033%_
                            _%e200915201036%_
                            _%hd200916201040%_
                            _%tl200917201043%_
                            _%e200918201046%_
                            _%hd200919201050%_
                            _%tl200920201053%_
                            _%e200921201056%_
                            _%hd200922201060%_
                            _%tl200923201063%_
                            _%e200924201066%_
                            _%hd200925201070%_
                            _%tl200926201073%_)
                     (let ((_%L201076%_ _%hd200925201070%_)
                           (_%L201078%_ _%hd200922201060%_)
                           (_%L201079%_ _%hd200919201050%_)
                           (_%L201080%_ _%hd200916201040%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201080%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201079%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201078%_)))
                           (_%__kont206475206476%_
                            _%L201076%_
                            _%L201078%_
                            _%L201079%_
                            _%L201080%_)
                           (let ()
                             (declare (not safe))
                             (_%g200906200948%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206472206473%_))
                  (let ((_%e200912201026%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206472206473%_))))
                    (let ((_%tl200914201033%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200912201026%_)))
                          (_%hd200913201030%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200912201026%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200914201033%_))
                          (let ((_%e200915201036%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200914201033%_))))
                            (let ((_%tl200917201043%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200915201036%_)))
                                  (_%hd200916201040%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200915201036%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200917201043%_))
                                  (let ((_%e200918201046%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl200917201043%_))))
                                    (let ((_%tl200920201053%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200918201046%_)))
                                          (_%hd200919201050%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200918201046%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200920201053%_))
                                          (let ((_%e200921201056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200920201053%_))))
                                            (let ((_%tl200923201063%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200921201056%_)))
                                                  (_%hd200922201060%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200921201056%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200923201063%_))
                                                  (let ((_%e200924201066%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200923201063%_))))
                                                    (let ((_%tl200926201073%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200924201066%_)))
                                                          (_%hd200925201070%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200924201066%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200926201073%_))
                                                          (_%__match206511206512%_
                                                           _%e200912201026%_
                                                           _%hd200913201030%_
                                                           _%tl200914201033%_
                                                           _%e200915201036%_
                                                           _%hd200916201040%_
                                                           _%tl200917201043%_
                                                           _%e200918201046%_
                                                           _%hd200919201050%_
                                                           _%tl200920201053%_
                                                           _%e200921201056%_
                                                           _%hd200922201060%_
                                                           _%tl200923201063%_
                                                           _%e200924201066%_
                                                           _%hd200925201070%_
                                                           _%tl200926201073%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200906200948%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200923201063%_))
                                                      (_%__kont206477206478%_
                                                       _%hd200922201060%_
                                                       _%hd200919201050%_
                                                       _%hd200916201040%_
                                                       _%hd200913201030%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200906200948%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200906200948%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200906200948%_)))))
                          (let () (declare (not safe)) (_%g200906200948%_)))))
                  (let () (declare (not safe)) (_%g200906200948%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx201105%_)
        (let* ((_%g201109201144%_
                (lambda (_%g201110201140%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201110201140%_))))
               (_%g201108201263%_
                (lambda (_%g201110201148%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201110201148%_))
                      (let ((_%e201114201151%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201110201148%_))))
                        (let ((_%hd201115201155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201114201151%_)))
                              (_%tl201116201158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201114201151%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201116201158%_))
                              (let ((_g207164_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201116201158%_
                                        '0))))
                                (begin
                                  (let ((_g207165_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207164_)
                                               (##vector-length _g207164_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207165_ 2)))
                                        (error "Context expects 2 values"
                                               _g207165_)))
                                  (let ((_%target201117201161%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207164_ 0)))
                                        (_%tl201119201164%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207164_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201119201164%_))
                                        (letrec ((_%loop201120201167%_
                                                  (lambda (_%hd201118201171%_
                                                           _%symbol201124201174%_
                                                           _%method201125201176%_
                                                           _%type-t201126201178%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201118201171%_))
                                                        (let ((_%e201121201181%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201118201171%_))))
                  (let ((_%lp-hd201122201185%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201121201181%_)))
                        (_%lp-tl201123201188%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201121201181%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201122201185%_))
                        (let ((_%e201130201191%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201122201185%_))))
                          (let ((_%hd201131201195%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201130201191%_)))
                                (_%tl201132201198%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201130201191%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201132201198%_))
                                (let ((_%e201133201201%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201132201198%_))))
                                  (let ((_%hd201134201205%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201133201201%_)))
                                        (_%tl201135201208%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201133201201%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201135201208%_))
                                        (let ((_%e201136201211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201135201208%_))))
                                          (let ((_%hd201137201215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201136201211%_)))
                                                (_%tl201138201218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201136201211%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201138201218%_))
                                                (_%loop201120201167%_
                                                 _%lp-tl201123201188%_
                                                 (cons _%hd201137201215%_
                                                       _%symbol201124201174%_)
                                                 (cons _%hd201134201205%_
                                                       _%method201125201176%_)
                                                 (cons _%hd201131201195%_
                                                       _%type-t201126201178%_))
                                                (_%g201109201144%_
                                                 _%g201110201148%_))))
                                        (_%g201109201144%_
                                         _%g201110201148%_))))
                                (_%g201109201144%_ _%g201110201148%_))))
                        (_%g201109201144%_ _%g201110201148%_))))
                (let ((_%symbol201127201221%_ (reverse _%symbol201124201174%_))
                      (_%method201128201224%_ (reverse _%method201125201176%_))
                      (_%type-t201129201226%_
                       (reverse _%type-t201126201178%_)))
                  ((lambda (_%L201229%_ _%L201231%_ _%L201232%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201229%_
                                _%L201231%_
                                _%L201232%_))
                             (let ((__tmp207166
                                    (lambda (_%g201248201253%_
                                             _%g201249201256%_
                                             _%g201250201258%_
                                             _%g201251201260%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g201250201258%_
                                                        (cons _%g201249201256%_
                                                              (cons _%g201248201253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g201251201260%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp207166
                                '()
                                _%L201229%_
                                _%L201231%_
                                _%L201232%_)))))
                   _%symbol201127201221%_
                   _%method201128201224%_
                   _%type-t201129201226%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201120201167%_
                                           _%target201117201161%_
                                           '()
                                           '()
                                           '()))
                                        (_%g201109201144%_
                                         _%g201110201148%_)))))
                              (_%g201109201144%_ _%g201110201148%_))))
                      (_%g201109201144%_ _%g201110201148%_)))))
          (_%g201108201263%_ _%$stx201105%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx201268%_)
        (let* ((_%g201272201305%_
                (lambda (_%g201273201301%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201273201301%_))))
               (_%g201271201419%_
                (lambda (_%g201273201309%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201273201309%_))
                      (let ((_%e201277201312%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201273201309%_))))
                        (let ((_%hd201278201316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201277201312%_)))
                              (_%tl201279201319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201277201312%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201279201319%_))
                              (let ((_%e201280201322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201279201319%_))))
                                (let ((_%hd201281201326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201280201322%_)))
                                      (_%tl201282201329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201280201322%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201282201329%_))
                                      (let ((_g207167_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201282201329%_
                                                '0))))
                                        (begin
                                          (let ((_g207168_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207167_)
                                                       (##vector-length
                                                        _g207167_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207168_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207168_)))
                                          (let ((_%target201283201332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207167_ 0)))
                                                (_%tl201285201335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207167_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201285201335%_))
                                                (letrec ((_%loop201286201338%_
                                                          (lambda (_%hd201284201342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol201290201345%_
                           _%method201291201347%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201284201342%_))
                        (let ((_%e201287201350%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201284201342%_))))
                          (let ((_%lp-hd201288201354%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201287201350%_)))
                                (_%lp-tl201289201357%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201287201350%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd201288201354%_))
                                (let ((_%e201294201360%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd201288201354%_))))
                                  (let ((_%hd201295201364%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201294201360%_)))
                                        (_%tl201296201367%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201294201360%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201296201367%_))
                                        (let ((_%e201297201370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201296201367%_))))
                                          (let ((_%hd201298201374%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201297201370%_)))
                                                (_%tl201299201377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201297201370%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201299201377%_))
                                                (_%loop201286201338%_
                                                 _%lp-tl201289201357%_
                                                 (cons _%hd201298201374%_
                                                       _%symbol201290201345%_)
                                                 (cons _%hd201295201364%_
                                                       _%method201291201347%_))
                                                (_%g201272201305%_
                                                 _%g201273201309%_))))
                                        (_%g201272201305%_
                                         _%g201273201309%_))))
                                (_%g201272201305%_ _%g201273201309%_))))
                        (let ((_%symbol201292201380%_
                               (reverse _%symbol201290201345%_))
                              (_%method201293201383%_
                               (reverse _%method201291201347%_)))
                          ((lambda (_%L201386%_ _%L201388%_ _%L201389%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L201386%_
                                        _%L201388%_))
                                     (let ((__tmp207169
                                            (lambda (_%g201407201411%_
                                                     _%g201408201414%_
                                                     _%g201409201416%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L201389%_
                                                                (cons _%g201408201414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g201407201411%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g201409201416%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp207169
                                        '()
                                        _%L201386%_
                                        _%L201388%_)))))
                           _%symbol201292201380%_
                           _%method201293201383%_
                           _%hd201281201326%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201286201338%_
                                                   _%target201283201332%_
                                                   '()
                                                   '()))
                                                (_%g201272201305%_
                                                 _%g201273201309%_)))))
                                      (_%g201272201305%_ _%g201273201309%_))))
                              (_%g201272201305%_ _%g201273201309%_))))
                      (_%g201272201305%_ _%g201273201309%_)))))
          (_%g201271201419%_ _%$stx201268%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx201424%_)
        (let* ((_%g201428201442%_
                (lambda (_%g201429201438%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201429201438%_))))
               (_%g201427201483%_
                (lambda (_%g201429201446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201429201446%_))
                      (let ((_%e201431201449%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201429201446%_))))
                        (let ((_%hd201432201453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201431201449%_)))
                              (_%tl201433201456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201431201449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201433201456%_))
                              (let ((_%e201434201459%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201433201456%_))))
                                (let ((_%hd201435201463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201434201459%_)))
                                      (_%tl201436201466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201434201459%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201436201466%_))
                                      ((lambda (_%L201469%_)
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
                                                           (cons _%L201469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201435201463%_)
                                      (_%g201428201442%_ _%g201429201446%_))))
                              (_%g201428201442%_ _%g201429201446%_))))
                      (_%g201428201442%_ _%g201429201446%_)))))
          (_%g201427201483%_ _%$stx201424%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx201487%_)
        (let* ((_%g201491201545%_
                (lambda (_%g201492201541%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201492201541%_))))
               (_%g201490201726%_
                (lambda (_%g201492201549%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201492201549%_))
                      (let ((_%e201504201552%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201492201549%_))))
                        (let ((_%hd201505201556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201504201552%_)))
                              (_%tl201506201559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201504201552%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201506201559%_))
                              (let ((_%e201507201562%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201506201559%_))))
                                (let ((_%hd201508201566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201507201562%_)))
                                      (_%tl201509201569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201507201562%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201509201569%_))
                                      (let ((_%e201510201572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201509201569%_))))
                                        (let ((_%hd201511201576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201510201572%_)))
                                              (_%tl201512201579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201510201572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201512201579%_))
                                              (let ((_%e201513201582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201512201579%_))))
                                                (let ((_%hd201514201586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201513201582%_)))
                                                      (_%tl201515201589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201513201582%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201515201589%_))
                                                      (let ((_%e201516201592%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201515201589%_))))
                (let ((_%hd201517201596%_
                       (let () (declare (not safe)) (##car _%e201516201592%_)))
                      (_%tl201518201599%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201516201592%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201518201599%_))
                      (let ((_%e201519201602%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201518201599%_))))
                        (let ((_%hd201520201606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201519201602%_)))
                              (_%tl201521201609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201519201602%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201521201609%_))
                              (let ((_%e201522201612%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201521201609%_))))
                                (let ((_%hd201523201616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201522201612%_)))
                                      (_%tl201524201619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201522201612%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201524201619%_))
                                      (let ((_%e201525201622%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201524201619%_))))
                                        (let ((_%hd201526201626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201525201622%_)))
                                              (_%tl201527201629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201525201622%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201527201629%_))
                                              (let ((_%e201528201632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201527201629%_))))
                                                (let ((_%hd201529201636%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201528201632%_)))
                                                      (_%tl201530201639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201528201632%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201530201639%_))
                                                      (let ((_%e201531201642%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201530201639%_))))
                (let ((_%hd201532201646%_
                       (let () (declare (not safe)) (##car _%e201531201642%_)))
                      (_%tl201533201649%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201531201642%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201533201649%_))
                      (let ((_%e201534201652%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201533201649%_))))
                        (let ((_%hd201535201656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201534201652%_)))
                              (_%tl201536201659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201534201652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201536201659%_))
                              (let ((_%e201537201662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201536201659%_))))
                                (let ((_%hd201538201666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201537201662%_)))
                                      (_%tl201539201669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201537201662%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201539201669%_))
                                      ((lambda (_%L201672%_
                                                _%L201674%_
                                                _%L201675%_
                                                _%L201676%_
                                                _%L201677%_
                                                _%L201678%_
                                                _%L201679%_
                                                _%L201680%_
                                                _%L201681%_
                                                _%L201682%_
                                                _%L201683%_)
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
                                                           (cons _%L201683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L201682%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L201681%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201680%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201679%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L201678%_ '()))
                                           (cons _%L201677%_
                                                 (cons _%L201676%_
                                                       (cons _%L201675%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201674%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L201672%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd201538201666%_
                                       _%hd201535201656%_
                                       _%hd201532201646%_
                                       _%hd201529201636%_
                                       _%hd201526201626%_
                                       _%hd201523201616%_
                                       _%hd201520201606%_
                                       _%hd201517201596%_
                                       _%hd201514201586%_
                                       _%hd201511201576%_
                                       _%hd201508201566%_)
                                      (_%g201491201545%_ _%g201492201549%_))))
                              (_%g201491201545%_ _%g201492201549%_))))
                      (_%g201491201545%_ _%g201492201549%_))))
              (_%g201491201545%_ _%g201492201549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201491201545%_
                                               _%g201492201549%_))))
                                      (_%g201491201545%_ _%g201492201549%_))))
                              (_%g201491201545%_ _%g201492201549%_))))
                      (_%g201491201545%_ _%g201492201549%_))))
              (_%g201491201545%_ _%g201492201549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201491201545%_
                                               _%g201492201549%_))))
                                      (_%g201491201545%_ _%g201492201549%_))))
                              (_%g201491201545%_ _%g201492201549%_))))
                      (_%g201491201545%_ _%g201492201549%_)))))
          (_%g201490201726%_ _%$stx201487%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx201730%_)
        (let* ((_%g201734201748%_
                (lambda (_%g201735201744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201735201744%_))))
               (_%g201733201789%_
                (lambda (_%g201735201752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201735201752%_))
                      (let ((_%e201737201755%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201735201752%_))))
                        (let ((_%hd201738201759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201737201755%_)))
                              (_%tl201739201762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201737201755%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201739201762%_))
                              (let ((_%e201740201765%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201739201762%_))))
                                (let ((_%hd201741201769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201740201765%_)))
                                      (_%tl201742201772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201740201765%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201742201772%_))
                                      ((lambda (_%L201775%_)
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
                                                           (cons _%L201775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201741201769%_)
                                      (_%g201734201748%_ _%g201735201752%_))))
                              (_%g201734201748%_ _%g201735201752%_))))
                      (_%g201734201748%_ _%g201735201752%_)))))
          (_%g201733201789%_ _%$stx201730%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx201793%_)
        (let* ((_%g201797201811%_
                (lambda (_%g201798201807%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201798201807%_))))
               (_%g201796201852%_
                (lambda (_%g201798201815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201798201815%_))
                      (let ((_%e201800201818%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201798201815%_))))
                        (let ((_%hd201801201822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201800201818%_)))
                              (_%tl201802201825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201800201818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201802201825%_))
                              (let ((_%e201803201828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201802201825%_))))
                                (let ((_%hd201804201832%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201803201828%_)))
                                      (_%tl201805201835%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201803201828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201805201835%_))
                                      ((lambda (_%L201838%_)
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
                                                           (cons _%L201838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201804201832%_)
                                      (_%g201797201811%_ _%g201798201815%_))))
                              (_%g201797201811%_ _%g201798201815%_))))
                      (_%g201797201811%_ _%g201798201815%_)))))
          (_%g201796201852%_ _%$stx201793%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx201856%_)
        (let* ((_%g201860201882%_
                (lambda (_%g201861201878%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201861201878%_))))
               (_%g201859201951%_
                (lambda (_%g201861201886%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201861201886%_))
                      (let ((_%e201865201889%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201861201886%_))))
                        (let ((_%hd201866201893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201865201889%_)))
                              (_%tl201867201896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201865201889%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201867201896%_))
                              (let ((_%e201868201899%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201867201896%_))))
                                (let ((_%hd201869201903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201868201899%_)))
                                      (_%tl201870201906%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201868201899%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201870201906%_))
                                      (let ((_%e201871201909%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201870201906%_))))
                                        (let ((_%hd201872201913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201871201909%_)))
                                              (_%tl201873201916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201871201909%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201873201916%_))
                                              (let ((_%e201874201919%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201873201916%_))))
                                                (let ((_%hd201875201923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201874201919%_)))
                                                      (_%tl201876201926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201874201919%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201876201926%_))
                                                      ((lambda (_%L201929%_
                                                                _%L201931%_
                                                                _%L201932%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L201932%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L201931%_ '()))
                                   (cons _%L201929%_ '())))))
               _%hd201875201923%_
               _%hd201872201913%_
               _%hd201869201903%_)
              (_%g201860201882%_ _%g201861201886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201860201882%_
                                               _%g201861201886%_))))
                                      (_%g201860201882%_ _%g201861201886%_))))
                              (_%g201860201882%_ _%g201861201886%_))))
                      (_%g201860201882%_ _%g201861201886%_)))))
          (_%g201859201951%_ _%$stx201856%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx201955%_)
        (let* ((_%g201959201981%_
                (lambda (_%g201960201977%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201960201977%_))))
               (_%g201958202050%_
                (lambda (_%g201960201985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201960201985%_))
                      (let ((_%e201964201988%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201960201985%_))))
                        (let ((_%hd201965201992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201964201988%_)))
                              (_%tl201966201995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201964201988%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201966201995%_))
                              (let ((_%e201967201998%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201966201995%_))))
                                (let ((_%hd201968202002%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201967201998%_)))
                                      (_%tl201969202005%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201967201998%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201969202005%_))
                                      (let ((_%e201970202008%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201969202005%_))))
                                        (let ((_%hd201971202012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201970202008%_)))
                                              (_%tl201972202015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201970202008%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201972202015%_))
                                              (let ((_%e201973202018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201972202015%_))))
                                                (let ((_%hd201974202022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201973202018%_)))
                                                      (_%tl201975202025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201973202018%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201975202025%_))
                                                      ((lambda (_%L202028%_
                                                                _%L202030%_
                                                                _%L202031%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202031%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202030%_ '()))
                                   (cons _%L202028%_ '())))))
               _%hd201974202022%_
               _%hd201971202012%_
               _%hd201968202002%_)
              (_%g201959201981%_ _%g201960201985%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201959201981%_
                                               _%g201960201985%_))))
                                      (_%g201959201981%_ _%g201960201985%_))))
                              (_%g201959201981%_ _%g201960201985%_))))
                      (_%g201959201981%_ _%g201960201985%_)))))
          (_%g201958202050%_ _%$stx201955%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx202054%_)
        (let* ((_%g202058202072%_
                (lambda (_%g202059202068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202059202068%_))))
               (_%g202057202113%_
                (lambda (_%g202059202076%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202059202076%_))
                      (let ((_%e202061202079%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202059202076%_))))
                        (let ((_%hd202062202083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202061202079%_)))
                              (_%tl202063202086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202061202079%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202063202086%_))
                              (let ((_%e202064202089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202063202086%_))))
                                (let ((_%hd202065202093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202064202089%_)))
                                      (_%tl202066202096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202064202089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202066202096%_))
                                      ((lambda (_%L202099%_)
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
                                                           (cons _%L202099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202065202093%_)
                                      (_%g202058202072%_ _%g202059202076%_))))
                              (_%g202058202072%_ _%g202059202076%_))))
                      (_%g202058202072%_ _%g202059202076%_)))))
          (_%g202057202113%_ _%$stx202054%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx202117%_)
        (let* ((_%g202121202139%_
                (lambda (_%g202122202135%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202122202135%_))))
               (_%g202120202194%_
                (lambda (_%g202122202143%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202122202143%_))
                      (let ((_%e202125202146%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202122202143%_))))
                        (let ((_%hd202126202150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202125202146%_)))
                              (_%tl202127202153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202125202146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202127202153%_))
                              (let ((_%e202128202156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202127202153%_))))
                                (let ((_%hd202129202160%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202128202156%_)))
                                      (_%tl202130202163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202128202156%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202130202163%_))
                                      (let ((_%e202131202166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202130202163%_))))
                                        (let ((_%hd202132202170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202131202166%_)))
                                              (_%tl202133202173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202131202166%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202133202173%_))
                                              ((lambda (_%L202176%_
                                                        _%L202178%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202178%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202176%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202132202170%_
                                               _%hd202129202160%_)
                                              (_%g202121202139%_
                                               _%g202122202143%_))))
                                      (_%g202121202139%_ _%g202122202143%_))))
                              (_%g202121202139%_ _%g202122202143%_))))
                      (_%g202121202139%_ _%g202122202143%_)))))
          (_%g202120202194%_ _%$stx202117%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx202198%_)
        (let* ((_%__stx206540206541%_ _%$stx202198%_)
               (_%g202205202266%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206540206541%_)))))
          (let ((_%__kont206543206544%_
                 (lambda (_%L202504%_ _%L202506%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202506%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202504%_ '()))
                                     '())))))
                (_%__kont206545206546%_
                 (lambda (_%L202443%_ _%L202445%_ _%L202446%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202446%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202445%_ '()))
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
                                 (cons _%L202443%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont206547206548%_
                 (lambda (_%L202367%_ _%L202369%_)
                   (cons _%L202369%_ (cons _%L202367%_ (cons '#f '())))))
                (_%__kont206549206550%_
                 (lambda (_%L202317%_ _%L202319%_ _%L202320%_)
                   (cons _%L202320%_
                         (cons _%L202319%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L202317%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx206540206541%_))
                (let ((_%e202209202474%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx206540206541%_))))
                  (let ((_%tl202211202481%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202209202474%_)))
                        (_%hd202210202478%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202209202474%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl202211202481%_))
                        (let ((_%e202212202484%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202211202481%_))))
                          (let ((_%tl202214202491%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202212202484%_)))
                                (_%hd202213202488%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202212202484%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202214202491%_))
                                (let ((_%e202215202494%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202214202491%_))))
                                  (let ((_%tl202217202501%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202215202494%_)))
                                        (_%hd202216202498%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202215202494%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202217202501%_))
                                        (_%__kont206543206544%_
                                         _%hd202216202498%_
                                         _%hd202213202488%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202217202501%_))
                                            (let ((_%e202230202419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202217202501%_))))
                                              (let ((_%tl202232202426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202230202419%_)))
                                                    (_%hd202231202423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202230202419%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd202231202423%_))
                                                    (let ((_%e202233202429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202231202423%_))))
                                                      (if (equal? _%e202233202429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202232202426%_))
                      (let ((_%e202234202433%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202232202426%_))))
                        (let ((_%tl202236202440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202234202433%_)))
                              (_%hd202235202437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202234202433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202236202440%_))
                              (_%__kont206545206546%_
                               _%hd202235202437%_
                               _%hd202216202498%_
                               _%hd202213202488%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd202216202498%_))
                                  (let ((_%e202257202303%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202216202498%_))))
                                    (declare (not safe))
                                    (_%g202205202266%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202205202266%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd202216202498%_))
                          (let ((_%e202257202303%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202216202498%_))))
                            (if (equal? _%e202257202303%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202232202426%_))
                                    (_%__kont206549206550%_
                                     _%hd202231202423%_
                                     _%hd202213202488%_
                                     _%hd202210202478%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202205202266%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202205202266%_))))
                          (let () (declare (not safe)) (_%g202205202266%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd202216202498%_))
                      (let ((_%e202257202303%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd202216202498%_))))
                        (if (equal? _%e202257202303%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202232202426%_))
                                (_%__kont206549206550%_
                                 _%hd202231202423%_
                                 _%hd202213202488%_
                                 _%hd202210202478%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g202205202266%_)))
                            (let () (declare (not safe)) (_%g202205202266%_))))
                      (let () (declare (not safe)) (_%g202205202266%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd202216202498%_))
                                                        (let ((_%e202257202303%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202216202498%_))))
                  (if (equal? _%e202257202303%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202232202426%_))
                          (_%__kont206549206550%_
                           _%hd202231202423%_
                           _%hd202213202488%_
                           _%hd202210202478%_)
                          (let () (declare (not safe)) (_%g202205202266%_)))
                      (let () (declare (not safe)) (_%g202205202266%_))))
                (let () (declare (not safe)) (_%g202205202266%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd202216202498%_))
                                                (let ((_%e202257202303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202216202498%_))))
                                                  (declare (not safe))
                                                  (_%g202205202266%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202205202266%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202214202491%_))
                                    (_%__kont206547206548%_
                                     _%hd202213202488%_
                                     _%hd202210202478%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202205202266%_))))))
                        (let () (declare (not safe)) (_%g202205202266%_)))))
                (let () (declare (not safe)) (_%g202205202266%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx202525%_)
        (let* ((_%g202529202558%_
                (lambda (_%g202530202554%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202530202554%_))))
               (_%g202528202667%_
                (lambda (_%g202530202562%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202530202562%_))
                      (let ((_%e202532202565%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202530202562%_))))
                        (let ((_%hd202533202569%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202532202565%_)))
                              (_%tl202534202572%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202532202565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202534202572%_))
                              (let ((_g207170_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202534202572%_
                                        '0))))
                                (begin
                                  (let ((_g207171_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207170_)
                                               (##vector-length _g207170_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207171_ 2)))
                                        (error "Context expects 2 values"
                                               _g207171_)))
                                  (let ((_%target202535202575%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207170_ 0)))
                                        (_%tl202537202578%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207170_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202537202578%_))
                                        (letrec ((_%loop202538202581%_
                                                  (lambda (_%hd202536202585%_
                                                           _%clause202542202588%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202536202585%_))
                                                        (let ((_%e202539202591%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202536202585%_))))
                  (let ((_%lp-hd202540202595%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202539202591%_)))
                        (_%lp-tl202541202598%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202539202591%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd202540202595%_))
                        (let ((_g207172_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd202540202595%_
                                  '0))))
                          (begin
                            (let ((_g207173_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g207172_)
                                         (##vector-length _g207172_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g207173_ 2)))
                                  (error "Context expects 2 values"
                                         _g207173_)))
                            (let ((_%target202544202601%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207172_ 0)))
                                  (_%tl202546202604%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207172_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202546202604%_))
                                  (letrec ((_%loop202547202607%_
                                            (lambda (_%hd202545202611%_
                                                     _%clause202551202614%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202545202611%_))
                                                  (let ((_%e202548202617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd202545202611%_))))
                                                    (let ((_%lp-hd202549202621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202548202617%_)))
                                                          (_%lp-tl202550202624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202548202617%_))))
                                                      (_%loop202547202607%_
                                                       _%lp-tl202550202624%_
                                                       (cons _%lp-hd202549202621%_
                                                             _%clause202551202614%_))))
                                                  (let ((_%clause202552202627%_
                                                         (reverse _%clause202551202614%_)))
                                                    (_%loop202538202581%_
                                                     _%lp-tl202541202598%_
                                                     (cons _%clause202552202627%_
                                                           _%clause202542202588%_)))))))
                                    (_%loop202547202607%_
                                     _%target202544202601%_
                                     '()))
                                  (_%g202529202558%_ _%g202530202562%_)))))
                        (_%g202529202558%_ _%g202530202562%_))))
                (let ((_%clause202543202631%_
                       (reverse _%clause202542202588%_)))
                  ((lambda (_%L202635%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp207174
                                              (lambda (_%g202650202655%_
                                                       _%g202651202658%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp207175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g202652202661%_ _%g202653202664%_)
                             (cons _%g202652202661%_ _%g202653202664%_))))
                      (declare (not safe))
                      (__foldr1 __tmp207175 '() _%g202650202655%_)))
              _%g202651202658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp207174
                                          '()
                                          _%L202635%_)))
                                 '())))
                   _%clause202543202631%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202538202581%_
                                           _%target202535202575%_
                                           '()))
                                        (_%g202529202558%_
                                         _%g202530202562%_)))))
                              (_%g202529202558%_ _%g202530202562%_))))
                      (_%g202529202558%_ _%g202530202562%_)))))
          (_%g202528202667%_ _%$stx202525%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx202673%_)
        (let* ((_%g202677202695%_
                (lambda (_%g202678202691%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202678202691%_))))
               (_%g202676202750%_
                (lambda (_%g202678202699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202678202699%_))
                      (let ((_%e202681202702%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202678202699%_))))
                        (let ((_%hd202682202706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202681202702%_)))
                              (_%tl202683202709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202681202702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202683202709%_))
                              (let ((_%e202684202712%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202683202709%_))))
                                (let ((_%hd202685202716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202684202712%_)))
                                      (_%tl202686202719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202684202712%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202686202719%_))
                                      (let ((_%e202687202722%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202686202719%_))))
                                        (let ((_%hd202688202726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202687202722%_)))
                                              (_%tl202689202729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202687202722%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202689202729%_))
                                              ((lambda (_%L202732%_
                                                        _%L202734%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202734%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202732%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202688202726%_
                                               _%hd202685202716%_)
                                              (_%g202677202695%_
                                               _%g202678202699%_))))
                                      (_%g202677202695%_ _%g202678202699%_))))
                              (_%g202677202695%_ _%g202678202699%_))))
                      (_%g202677202695%_ _%g202678202699%_)))))
          (_%g202676202750%_ _%$stx202673%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx202754%_)
        (let* ((_%g202758202776%_
                (lambda (_%g202759202772%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202759202772%_))))
               (_%g202757202831%_
                (lambda (_%g202759202780%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202759202780%_))
                      (let ((_%e202762202783%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202759202780%_))))
                        (let ((_%hd202763202787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202762202783%_)))
                              (_%tl202764202790%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202762202783%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202764202790%_))
                              (let ((_%e202765202793%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202764202790%_))))
                                (let ((_%hd202766202797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202765202793%_)))
                                      (_%tl202767202800%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202765202793%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202767202800%_))
                                      (let ((_%e202768202803%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202767202800%_))))
                                        (let ((_%hd202769202807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202768202803%_)))
                                              (_%tl202770202810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202768202803%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202770202810%_))
                                              ((lambda (_%L202813%_
                                                        _%L202815%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202815%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202813%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202769202807%_
                                               _%hd202766202797%_)
                                              (_%g202758202776%_
                                               _%g202759202780%_))))
                                      (_%g202758202776%_ _%g202759202780%_))))
                              (_%g202758202776%_ _%g202759202780%_))))
                      (_%g202758202776%_ _%g202759202780%_)))))
          (_%g202757202831%_ _%$stx202754%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx202835%_)
        (let* ((_%g202839202868%_
                (lambda (_%g202840202864%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202840202864%_))))
               (_%g202838202968%_
                (lambda (_%g202840202872%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202840202872%_))
                      (let ((_%e202843202875%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202840202872%_))))
                        (let ((_%hd202844202879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202843202875%_)))
                              (_%tl202845202882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202843202875%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202845202882%_))
                              (let ((_g207176_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202845202882%_
                                        '0))))
                                (begin
                                  (let ((_g207177_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207176_)
                                               (##vector-length _g207176_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207177_ 2)))
                                        (error "Context expects 2 values"
                                               _g207177_)))
                                  (let ((_%target202846202885%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207176_ 0)))
                                        (_%tl202848202888%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207176_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202848202888%_))
                                        (letrec ((_%loop202849202891%_
                                                  (lambda (_%hd202847202895%_
                                                           _%rule202853202898%_
                                                           _%proc202854202900%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202847202895%_))
                                                        (let ((_%e202850202903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202847202895%_))))
                  (let ((_%lp-hd202851202907%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202850202903%_)))
                        (_%lp-tl202852202910%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202850202903%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202851202907%_))
                        (let ((_%e202857202913%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd202851202907%_))))
                          (let ((_%hd202858202917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202857202913%_)))
                                (_%tl202859202920%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202857202913%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202859202920%_))
                                (let ((_%e202860202923%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202859202920%_))))
                                  (let ((_%hd202861202927%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202860202923%_)))
                                        (_%tl202862202930%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202860202923%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202862202930%_))
                                        (_%loop202849202891%_
                                         _%lp-tl202852202910%_
                                         (cons _%hd202861202927%_
                                               _%rule202853202898%_)
                                         (cons _%hd202858202917%_
                                               _%proc202854202900%_))
                                        (_%g202839202868%_
                                         _%g202840202872%_))))
                                (_%g202839202868%_ _%g202840202872%_))))
                        (_%g202839202868%_ _%g202840202872%_))))
                (let ((_%rule202855202933%_ (reverse _%rule202853202898%_))
                      (_%proc202856202936%_ (reverse _%proc202854202900%_)))
                  ((lambda (_%L202939%_ _%L202941%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L202939%_
                                _%L202941%_))
                             (let ((__tmp207178
                                    (lambda (_%g202956202960%_
                                             _%g202957202963%_
                                             _%g202958202965%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g202957202963%_
                                                        (cons _%g202956202960%_
                                                              '())))
                                            _%g202958202965%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207178
                                '()
                                _%L202939%_
                                _%L202941%_)))))
                   _%rule202855202933%_
                   _%proc202856202936%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202849202891%_
                                           _%target202846202885%_
                                           '()
                                           '()))
                                        (_%g202839202868%_
                                         _%g202840202872%_)))))
                              (_%g202839202868%_ _%g202840202872%_))))
                      (_%g202839202868%_ _%g202840202872%_)))))
          (_%g202838202968%_ _%$stx202835%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx202973%_)
        (let* ((_%g202977202995%_
                (lambda (_%g202978202991%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202978202991%_))))
               (_%g202976203050%_
                (lambda (_%g202978202999%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202978202999%_))
                      (let ((_%e202981203002%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202978202999%_))))
                        (let ((_%hd202982203006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202981203002%_)))
                              (_%tl202983203009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202981203002%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202983203009%_))
                              (let ((_%e202984203012%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202983203009%_))))
                                (let ((_%hd202985203016%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202984203012%_)))
                                      (_%tl202986203019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202984203012%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202986203019%_))
                                      (let ((_%e202987203022%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202986203019%_))))
                                        (let ((_%hd202988203026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202987203022%_)))
                                              (_%tl202989203029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202987203022%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202989203029%_))
                                              ((lambda (_%L203032%_
                                                        _%L203034%_)
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
                                                   (cons _%L203034%_ '()))
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
                 (cons _%L203032%_ '())))
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
                                   (cons _%L203034%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202988203026%_
                                               _%hd202985203016%_)
                                              (_%g202977202995%_
                                               _%g202978202999%_))))
                                      (_%g202977202995%_ _%g202978202999%_))))
                              (_%g202977202995%_ _%g202978202999%_))))
                      (_%g202977202995%_ _%g202978202999%_)))))
          (_%g202976203050%_ _%$stx202973%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx203054%_)
        (let* ((_%__stx206658206659%_ _%$stx203054%_)
               (_%g203059203084%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206658206659%_)))))
          (let ((_%__kont206661206662%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont206663206664%_
                 (lambda (_%L203131%_ _%L203133%_ _%L203134%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L203134%_ (cons _%L203133%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L203131%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx206658206659%_))
                (let ((_%e203061203160%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx206658206659%_))))
                  (let ((_%tl203063203167%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203061203160%_)))
                        (_%hd203062203164%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203061203160%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl203063203167%_))
                        (_%__kont206661206662%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203063203167%_))
                            (let ((_%e203070203101%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl203063203167%_))))
                              (let ((_%tl203072203108%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203070203101%_)))
                                    (_%hd203071203105%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203070203101%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd203071203105%_))
                                    (let ((_%e203073203111%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd203071203105%_))))
                                      (let ((_%tl203075203118%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203073203111%_)))
                                            (_%hd203074203115%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203073203111%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203075203118%_))
                                            (let ((_%e203076203121%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl203075203118%_))))
                                              (let ((_%tl203078203128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203076203121%_)))
                                                    (_%hd203077203125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203076203121%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203078203128%_))
                                                    (_%__kont206663206664%_
                                                     _%tl203072203108%_
                                                     _%hd203077203125%_
                                                     _%hd203074203115%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203059203084%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203059203084%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203059203084%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g203059203084%_))))))
                (let () (declare (not safe)) (_%g203059203084%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx203178%_)
        (let* ((_%__stx206702206703%_ _%$stx203178%_)
               (_%g203183203214%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206702206703%_)))))
          (let ((_%__kont206705206706%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont206707206708%_
                 (lambda (_%L203281%_ _%L203283%_ _%L203284%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L203284%_
                                           (let ((__tmp207179
                                                  (lambda (_%g203304203307%_
                                                           _%g203305203310%_)
                                                    (cons _%g203304203307%_
                                                          _%g203305203310%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp207179
                                              '()
                                              _%L203283%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L203281%_)
                                     '()))))))
            (let ((_%__match206745206746%_
                   (lambda (_%e203191203221%_
                            _%hd203192203225%_
                            _%tl203193203228%_
                            _%e203194203231%_
                            _%hd203195203235%_
                            _%tl203196203238%_
                            _%e203197203241%_
                            _%hd203198203245%_
                            _%tl203199203248%_
                            _%__splice206709206710%_
                            _%target203200203251%_
                            _%tl203202203254%_)
                     (letrec ((_%loop203203203257%_
                               (lambda (_%hd203201203261%_ _%sig203207203264%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd203201203261%_))
                                     (let ((_%e203204203267%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd203201203261%_))))
                                       (let ((_%lp-tl203206203274%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e203204203267%_)))
                                             (_%lp-hd203205203271%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e203204203267%_))))
                                         (_%loop203203203257%_
                                          _%lp-tl203206203274%_
                                          (cons _%lp-hd203205203271%_
                                                _%sig203207203264%_))))
                                     (let ((_%sig203208203277%_
                                            (reverse _%sig203207203264%_)))
                                       (_%__kont206707206708%_
                                        _%tl203196203238%_
                                        _%sig203208203277%_
                                        _%hd203198203245%_))))))
                       (_%loop203203203257%_ _%target203200203251%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206702206703%_))
                  (let ((_%e203185203320%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206702206703%_))))
                    (let ((_%tl203187203327%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203185203320%_)))
                          (_%hd203186203324%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203185203320%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203187203327%_))
                          (_%__kont206705206706%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203187203327%_))
                              (let ((_%e203194203231%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203187203327%_))))
                                (let ((_%tl203196203238%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203194203231%_)))
                                      (_%hd203195203235%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203194203231%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203195203235%_))
                                      (let ((_%e203197203241%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203195203235%_))))
                                        (let ((_%tl203199203248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203197203241%_)))
                                              (_%hd203198203245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203197203241%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203199203248%_))
                                              (let ((_%__splice206709206710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203199203248%_
                                                        '0))))
                                                (let ((_%tl203202203254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206709206710%_
                                                          '1)))
                                                      (_%target203200203251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206709206710%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203202203254%_))
                                                      (_%__match206745206746%_
                                                       _%e203185203320%_
                                                       _%hd203186203324%_
                                                       _%tl203187203327%_
                                                       _%e203194203231%_
                                                       _%hd203195203235%_
                                                       _%tl203196203238%_
                                                       _%e203197203241%_
                                                       _%hd203198203245%_
                                                       _%tl203199203248%_
                                                       _%__splice206709206710%_
                                                       _%target203200203251%_
                                                       _%tl203202203254%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203183203214%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203183203214%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203183203214%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203183203214%_))))))
                  (let () (declare (not safe)) (_%g203183203214%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx203339%_)
        (let* ((_%__stx206748206749%_ _%$stx203339%_)
               (_%g203344203391%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206748206749%_)))))
          (let ((_%__kont206751206752%_
                 (lambda (_%L203553%_ _%L203555%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L203555%_
                               (let ((__tmp207180
                                      (lambda (_%g203575203578%_
                                               _%g203576203581%_)
                                        (cons _%g203575203578%_
                                              _%g203576203581%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207180 '() _%L203553%_))))))
                (_%__kont206755206756%_
                 (lambda (_%L203448%_ _%L203450%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L203450%_
                               (let ((__tmp207181
                                      (lambda (_%g203467203470%_
                                               _%g203468203473%_)
                                        (cons _%g203467203470%_
                                              _%g203468203473%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207181 '() _%L203448%_)))))))
            (let* ((_%__match206815206816%_
                    (lambda (_%e203371203398%_
                             _%hd203372203402%_
                             _%tl203373203405%_
                             _%e203374203408%_
                             _%hd203375203412%_
                             _%tl203376203415%_
                             _%__splice206757206758%_
                             _%target203377203418%_
                             _%tl203379203421%_)
                      (letrec ((_%loop203380203424%_
                                (lambda (_%hd203378203428%_
                                         _%sig203384203431%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203378203428%_))
                                      (let ((_%e203381203434%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203378203428%_))))
                                        (let ((_%lp-tl203383203441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203381203434%_)))
                                              (_%lp-hd203382203438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203381203434%_))))
                                          (_%loop203380203424%_
                                           _%lp-tl203383203441%_
                                           (cons _%lp-hd203382203438%_
                                                 _%sig203384203431%_))))
                                      (let ((_%sig203385203444%_
                                             (reverse _%sig203384203431%_)))
                                        (_%__kont206755206756%_
                                         _%sig203385203444%_
                                         _%hd203375203412%_))))))
                        (_%loop203380203424%_ _%target203377203418%_ '()))))
                   (_%__match206807206808%_
                    (lambda (_%e203371203398%_
                             _%hd203372203402%_
                             _%tl203373203405%_
                             _%e203374203408%_
                             _%hd203375203412%_
                             _%tl203376203415%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl203376203415%_))
                          (let ((_%__splice206757206758%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl203376203415%_
                                    '0))))
                            (let ((_%tl203379203421%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice206757206758%_
                                      '1)))
                                  (_%target203377203418%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice206757206758%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203379203421%_))
                                  (_%__match206815206816%_
                                   _%e203371203398%_
                                   _%hd203372203402%_
                                   _%tl203373203405%_
                                   _%e203374203408%_
                                   _%hd203375203412%_
                                   _%tl203376203415%_
                                   _%__splice206757206758%_
                                   _%target203377203418%_
                                   _%tl203379203421%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g203344203391%_)))))
                          (let () (declare (not safe)) (_%g203344203391%_)))))
                   (_%__match206795206796%_
                    (lambda (_%e203348203483%_
                             _%hd203349203487%_
                             _%tl203350203490%_
                             _%e203351203493%_
                             _%hd203352203497%_
                             _%tl203353203500%_
                             _%e203354203503%_
                             _%hd203355203507%_
                             _%tl203356203510%_
                             _%e203357203513%_
                             _%hd203358203517%_
                             _%tl203359203520%_
                             _%__splice206753206754%_
                             _%target203360203523%_
                             _%tl203362203526%_)
                      (letrec ((_%loop203363203529%_
                                (lambda (_%hd203361203533%_
                                         _%sig203367203536%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203361203533%_))
                                      (let ((_%e203364203539%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203361203533%_))))
                                        (let ((_%lp-tl203366203546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203364203539%_)))
                                              (_%lp-hd203365203543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203364203539%_))))
                                          (_%loop203363203529%_
                                           _%lp-tl203366203546%_
                                           (cons _%lp-hd203365203543%_
                                                 _%sig203367203536%_))))
                                      (let ((_%sig203368203549%_
                                             (reverse _%sig203367203536%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203356203510%_))
                                            (_%__kont206751206752%_
                                             _%sig203368203549%_
                                             _%hd203352203497%_)
                                            (_%__match206807206808%_
                                             _%e203348203483%_
                                             _%hd203349203487%_
                                             _%tl203350203490%_
                                             _%e203351203493%_
                                             _%hd203352203497%_
                                             _%tl203353203500%_)))))))
                        (_%loop203363203529%_ _%target203360203523%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206748206749%_))
                  (let ((_%e203348203483%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206748206749%_))))
                    (let ((_%tl203350203490%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203348203483%_)))
                          (_%hd203349203487%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203348203483%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203350203490%_))
                          (let ((_%e203351203493%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203350203490%_))))
                            (let ((_%tl203353203500%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203351203493%_)))
                                  (_%hd203352203497%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203351203493%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203353203500%_))
                                  (let ((_%e203354203503%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203353203500%_))))
                                    (let ((_%tl203356203510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203354203503%_)))
                                          (_%hd203355203507%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203354203503%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd203355203507%_))
                                          (let ((_%e203357203513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd203355203507%_))))
                                            (let ((_%tl203359203520%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203357203513%_)))
                                                  (_%hd203358203517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203357203513%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd203358203517%_))
                                                  (if (let ((__tmp207182
                                                             |gxc[1]#_g207183_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp207182
                                                         _%hd203358203517%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl203359203520%_))
                                                          (let ((_%__splice206753206754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203359203520%_ '0))))
                    (let ((_%tl203362203526%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206753206754%_ '1)))
                          (_%target203360203523%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206753206754%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203362203526%_))
                          (_%__match206795206796%_
                           _%e203348203483%_
                           _%hd203349203487%_
                           _%tl203350203490%_
                           _%e203351203493%_
                           _%hd203352203497%_
                           _%tl203353203500%_
                           _%e203354203503%_
                           _%hd203355203507%_
                           _%tl203356203510%_
                           _%e203357203513%_
                           _%hd203358203517%_
                           _%tl203359203520%_
                           _%__splice206753206754%_
                           _%target203360203523%_
                           _%tl203362203526%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203353203500%_))
                              (let ((_%__splice206757206758%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203353203500%_
                                        '0))))
                                (let ((_%tl203379203421%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice206757206758%_
                                          '1)))
                                      (_%target203377203418%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice206757206758%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203379203421%_))
                                      (_%__match206815206816%_
                                       _%e203348203483%_
                                       _%hd203349203487%_
                                       _%tl203350203490%_
                                       _%e203351203493%_
                                       _%hd203352203497%_
                                       _%tl203353203500%_
                                       _%__splice206757206758%_
                                       _%target203377203418%_
                                       _%tl203379203421%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g203344203391%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203344203391%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl203353203500%_))
                      (let ((_%__splice206757206758%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl203353203500%_
                                '0))))
                        (let ((_%tl203379203421%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206757206758%_ '1)))
                              (_%target203377203418%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206757206758%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203379203421%_))
                              (_%__match206815206816%_
                               _%e203348203483%_
                               _%hd203349203487%_
                               _%tl203350203490%_
                               _%e203351203493%_
                               _%hd203352203497%_
                               _%tl203353203500%_
                               _%__splice206757206758%_
                               _%target203377203418%_
                               _%tl203379203421%_)
                              (let ()
                                (declare (not safe))
                                (_%g203344203391%_)))))
                      (let () (declare (not safe)) (_%g203344203391%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl203353203500%_))
                  (let ((_%__splice206757206758%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203353203500%_ '0))))
                    (let ((_%tl203379203421%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206757206758%_ '1)))
                          (_%target203377203418%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206757206758%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203379203421%_))
                          (_%__match206815206816%_
                           _%e203348203483%_
                           _%hd203349203487%_
                           _%tl203350203490%_
                           _%e203351203493%_
                           _%hd203352203497%_
                           _%tl203353203500%_
                           _%__splice206757206758%_
                           _%target203377203418%_
                           _%tl203379203421%_)
                          (let () (declare (not safe)) (_%g203344203391%_)))))
                  (let () (declare (not safe)) (_%g203344203391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203353203500%_))
                                                      (let ((_%__splice206757206758%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl203353203500%_ '0))))
                (let ((_%tl203379203421%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206757206758%_ '1)))
                      (_%target203377203418%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206757206758%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203379203421%_))
                      (_%__match206815206816%_
                       _%e203348203483%_
                       _%hd203349203487%_
                       _%tl203350203490%_
                       _%e203351203493%_
                       _%hd203352203497%_
                       _%tl203353203500%_
                       _%__splice206757206758%_
                       _%target203377203418%_
                       _%tl203379203421%_)
                      (let () (declare (not safe)) (_%g203344203391%_)))))
              (let () (declare (not safe)) (_%g203344203391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203353203500%_))
                                              (let ((_%__splice206757206758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203353203500%_
                                                        '0))))
                                                (let ((_%tl203379203421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206757206758%_
                                                          '1)))
                                                      (_%target203377203418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206757206758%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203379203421%_))
                                                      (_%__match206815206816%_
                                                       _%e203348203483%_
                                                       _%hd203349203487%_
                                                       _%tl203350203490%_
                                                       _%e203351203493%_
                                                       _%hd203352203497%_
                                                       _%tl203353203500%_
                                                       _%__splice206757206758%_
                                                       _%target203377203418%_
                                                       _%tl203379203421%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203344203391%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203344203391%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203353203500%_))
                                      (let ((_%__splice206757206758%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203353203500%_
                                                '0))))
                                        (let ((_%tl203379203421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206757206758%_
                                                  '1)))
                                              (_%target203377203418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206757206758%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203379203421%_))
                                              (_%__match206815206816%_
                                               _%e203348203483%_
                                               _%hd203349203487%_
                                               _%tl203350203490%_
                                               _%e203351203493%_
                                               _%hd203352203497%_
                                               _%tl203353203500%_
                                               _%__splice206757206758%_
                                               _%target203377203418%_
                                               _%tl203379203421%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g203344203391%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203344203391%_))))))
                          (let () (declare (not safe)) (_%g203344203391%_)))))
                  (let () (declare (not safe)) (_%g203344203391%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx204738%_ _%id204740%_)
        (let ((_%proc204744%_
               (let ((__tmp207184
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id204740%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207184))))
          (if (procedure? _%proc204744%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx204738%_
                 _%id204740%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx204729%_ _%id204731%_)
        (let ((_%klass204735%_
               (let ((__tmp207185
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id204731%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207185))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass204735%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx204729%_
                 _%id204731%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx203979%_ _%proc203981%_ _%sig203982%_)
        (letrec ((_%signature-arity203984%_
                  (lambda (_%args204661%_)
                    (let _%loop204664%_ ((_%rest204667%_ _%args204661%_)
                                         (_%count204669%_ '0))
                      (let* ((_%rest204670204681%_ _%rest204667%_)
                             (_%E204674204687%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest204670204681%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K204677204718%_
                               (lambda (_%rest204715%_)
                                 (_%loop204664%_
                                  _%rest204715%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count204669%_ '1)))))
                              (_%K204676204707%_ (lambda () _%count204669%_))
                              (_%K204675204695%_
                               (lambda () (cons _%count204669%_ '()))))
                          (let ((_%try-match204672204711%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest204670204681%_))
                                       (_%K204676204707%_)
                                       (_%K204675204695%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest204670204681%_))
                                (let* ((_%tl204679204722%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest204670204681%_)))
                                       (_%rest204726%_ _%tl204679204722%_))
                                  (_%K204677204718%_ _%rest204726%_))
                                (_%try-match204672204711%_))))))))
                 (_%make-signature203986%_
                  (lambda (_%args204543%_
                           _%return204545%_
                           _%effect204546%_
                           _%unchecked204547%_)
                    (let ((__tmp207186
                           (lambda (_%g204548204550%_)
                             (|gxc[1]#verify-class!|
                              _%ctx203979%_
                              _%g204548204550%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp207186 _%args204543%_))
                    (|gxc[1]#verify-class!| _%ctx203979%_ _%return204545%_)
                    (if _%unchecked204547%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx203979%_
                         _%unchecked204547%_)
                        '#!void)
                    (let ((_%arity204554%_
                           (_%signature-arity203984%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args204543%_)))))
                      (if _%effect204546%_
                          (let ((_%effect204557%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect204546%_))))
                            (if (and (list? _%effect204557%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect204557%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx203979%_
                                   _%proc203981%_
                                   _%effect204557%_))))
                          '#!void)
                      (cons _%arity204554%_
                            (cons (let* ((_%g204560204583%_
                                          (lambda (_%g204561204579%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g204561204579%_))))
                                         (_%g204559204657%_
                                          (lambda (_%g204561204587%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g204561204587%_))
                                                (let ((_%e204566204590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g204561204587%_))))
                                                  (let ((_%hd204567204594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204566204590%_)))
                                                        (_%tl204568204597%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204566204590%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204568204597%_))
                                                        (let ((_%e204569204600%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl204568204597%_))))
                  (let ((_%hd204570204604%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204569204600%_)))
                        (_%tl204571204607%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204569204600%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204571204607%_))
                        (let ((_%e204572204610%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204571204607%_))))
                          (let ((_%hd204573204614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204572204610%_)))
                                (_%tl204574204617%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204572204610%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204574204617%_))
                                (let ((_%e204575204620%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204574204617%_))))
                                  (let ((_%hd204576204624%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204575204620%_)))
                                        (_%tl204577204627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204575204620%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204577204627%_))
                                        ((lambda (_%L204630%_
                                                  _%L204632%_
                                                  _%L204633%_
                                                  _%L204634%_)
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
                           (cons _%L204634%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L204633%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L204632%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L204630%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd204576204624%_
                                         _%hd204573204614%_
                                         _%hd204570204604%_
                                         _%hd204567204594%_)
                                        (_%g204560204583%_
                                         _%g204561204587%_))))
                                (_%g204560204583%_ _%g204561204587%_))))
                        (_%g204560204583%_ _%g204561204587%_))))
                (_%g204560204583%_ _%g204561204587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204560204583%_
                                                 _%g204561204587%_)))))
                                    (_%g204559204657%_
                                     (list _%args204543%_
                                           _%return204545%_
                                           _%effect204546%_
                                           _%unchecked204547%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx203979%_ _%proc203981%_)
          (let* ((_%__stx206826206827%_ _%sig203982%_)
                 (_%g203993204096%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx206826206827%_)))))
            (let ((_%__kont206829206830%_
                   (lambda (_%L204524%_ _%L204526%_)
                     (_%make-signature203986%_
                      _%L204526%_
                      _%L204524%_
                      '#f
                      '#f)))
                  (_%__kont206831206832%_
                   (lambda (_%L204475%_ _%L204477%_ _%L204478%_)
                     (_%make-signature203986%_
                      _%L204478%_
                      _%L204477%_
                      _%L204475%_
                      '#f)))
                  (_%__kont206833206834%_
                   (lambda (_%L204399%_ _%L204401%_ _%L204402%_)
                     (_%make-signature203986%_
                      _%L204402%_
                      _%L204401%_
                      _%L204399%_
                      (let ((__tmp207187
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc203981%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207187)))))
                  (_%__kont206835206836%_
                   (lambda (_%L204305%_ _%L204307%_ _%L204308%_ _%L204309%_)
                     (_%make-signature203986%_
                      _%L204309%_
                      _%L204308%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204305%_)))))
                  (_%__kont206837206838%_
                   (lambda (_%L204212%_ _%L204214%_)
                     (_%make-signature203986%_
                      _%L204214%_
                      _%L204212%_
                      '#f
                      (let ((__tmp207188
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc203981%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207188)))))
                  (_%__kont206839206840%_
                   (lambda (_%L204147%_ _%L204149%_ _%L204150%_)
                     (_%make-signature203986%_
                      _%L204150%_
                      _%L204149%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204147%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206826206827%_))
                  (let ((_%e203997204504%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206826206827%_))))
                    (let ((_%tl203999204511%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203997204504%_)))
                          (_%hd203998204508%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203997204504%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203999204511%_))
                          (let ((_%e204000204514%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203999204511%_))))
                            (let ((_%tl204002204521%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204000204514%_)))
                                  (_%hd204001204518%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204000204514%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204002204521%_))
                                  (_%__kont206829206830%_
                                   _%hd204001204518%_
                                   _%hd203998204508%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204002204521%_))
                                      (let ((_%e204012204451%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204002204521%_))))
                                        (let ((_%tl204014204458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204012204451%_)))
                                              (_%hd204013204455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204012204451%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd204013204455%_))
                                              (let ((_%e204015204461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204013204455%_))))
                                                (if (equal? _%e204015204461%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204014204458%_))
                                                        (let ((_%e204016204465%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl204014204458%_))))
                  (let ((_%tl204018204472%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204016204465%_)))
                        (_%hd204017204469%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204016204465%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl204018204472%_))
                        (_%__kont206831206832%_
                         _%hd204017204469%_
                         _%hd204001204518%_
                         _%hd203998204508%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204018204472%_))
                            (let ((_%e204035204385%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204018204472%_))))
                              (let ((_%tl204037204392%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204035204385%_)))
                                    (_%hd204036204389%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204035204385%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd204036204389%_))
                                    (let ((_%e204038204395%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd204036204389%_))))
                                      (if (equal? _%e204038204395%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204037204392%_))
                                              (_%__kont206833206834%_
                                               _%hd204017204469%_
                                               _%hd204001204518%_
                                               _%hd203998204508%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204037204392%_))
                                                  (let ((_%e204060204295%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204037204392%_))))
                                                    (let ((_%tl204062204302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204060204295%_)))
                                                          (_%hd204061204299%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204060204295%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204062204302%_))
                                                          (_%__kont206835206836%_
                                                           _%hd204061204299%_
                                                           _%hd204017204469%_
                                                           _%hd204001204518%_
                                                           _%hd203998204508%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g203993204096%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203993204096%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203993204096%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203993204096%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g203993204096%_))))))
                (let () (declare (not safe)) (_%g203993204096%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e204015204461%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl204014204458%_))
                                                            (_%__kont206837206838%_
                                                             _%hd204001204518%_
                                                             _%hd203998204508%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204014204458%_))
                        (let ((_%e204088204137%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204014204458%_))))
                          (let ((_%tl204090204144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204088204137%_)))
                                (_%hd204089204141%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204088204137%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204090204144%_))
                                (_%__kont206839206840%_
                                 _%hd204089204141%_
                                 _%hd204001204518%_
                                 _%hd203998204508%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g203993204096%_)))))
                        (let () (declare (not safe)) (_%g203993204096%_))))
                (let () (declare (not safe)) (_%g203993204096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203993204096%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203993204096%_))))))
                          (let () (declare (not safe)) (_%g203993204096%_)))))
                  (let () (declare (not safe)) (_%g203993204096%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig203590%_)
        (let* ((_%g203593203673%_
                (lambda (_%g203594203669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203594203669%_))))
               (_%g203592203975%_
                (lambda (_%g203594203677%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203594203677%_))
                      (let ((_%e203600203680%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203594203677%_))))
                        (let ((_%hd203601203684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203600203680%_)))
                              (_%tl203602203687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203600203680%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203602203687%_))
                              (let ((_%e203603203690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203602203687%_))))
                                (let ((_%hd203604203694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203603203690%_)))
                                      (_%tl203605203697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203603203690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd203604203694%_))
                                      (let ((_%e203606203700%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203604203694%_))))
                                        (if (equal? _%e203606203700%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl203605203697%_))
                                                (let ((_%e203607203704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl203605203697%_))))
                                                  (let ((_%hd203608203708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203607203704%_)))
                                                        (_%tl203609203711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203607203704%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203608203708%_))
                                                        (let ((_%e203610203714%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203608203708%_))))
                  (let ((_%hd203611203718%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203610203714%_)))
                        (_%tl203612203721%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203610203714%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd203611203718%_))
                        (if (let ((__tmp207189 |gxc[1]#_g207190_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp207189
                               _%hd203611203718%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203612203721%_))
                                (let ((_%e203613203724%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203612203721%_))))
                                  (let ((_%hd203614203728%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203613203724%_)))
                                        (_%tl203615203731%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203613203724%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203615203731%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203609203711%_))
                                            (let ((_%e203616203734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl203609203711%_))))
                                              (let ((_%hd203617203738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203616203734%_)))
                                                    (_%tl203618203741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203616203734%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd203617203738%_))
                                                    (let ((_%e203619203744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd203617203738%_))))
                                                      (if (equal? _%e203619203744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203618203741%_))
                      (let ((_%e203620203748%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203618203741%_))))
                        (let ((_%hd203621203752%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203620203748%_)))
                              (_%tl203622203755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203620203748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd203621203752%_))
                              (let ((_%e203623203758%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd203621203752%_))))
                                (let ((_%hd203624203762%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203623203758%_)))
                                      (_%tl203625203765%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203623203758%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd203624203762%_))
                                      (if (let ((__tmp207191
                                                 |gxc[1]#_g207192_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp207191
                                             _%hd203624203762%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203625203765%_))
                                              (let ((_%e203626203768%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203625203765%_))))
                                                (let ((_%hd203627203772%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203626203768%_)))
                                                      (_%tl203628203775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203626203768%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203628203775%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl203622203755%_))
                                                          (let ((_%e203629203778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl203622203755%_))))
                    (let ((_%hd203630203782%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203629203778%_)))
                          (_%tl203631203785%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203629203778%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd203630203782%_))
                          (let ((_%e203632203788%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd203630203782%_))))
                            (if (equal? _%e203632203788%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl203631203785%_))
                                    (let ((_%e203633203792%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl203631203785%_))))
                                      (let ((_%hd203634203796%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203633203792%_)))
                                            (_%tl203635203799%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203633203792%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd203634203796%_))
                                            (let ((_%e203636203802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd203634203796%_))))
                                              (let ((_%hd203637203806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203636203802%_)))
                                                    (_%tl203638203809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203636203802%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd203637203806%_))
                                                    (if (let ((__tmp207193
                                                               |gxc[1]#_g207194_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp207193
                                                           _%hd203637203806%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl203638203809%_))
                                                            (let ((_%e203639203812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl203638203809%_))))
                      (let ((_%hd203640203816%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203639203812%_)))
                            (_%tl203641203819%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203639203812%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl203641203819%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203635203799%_))
                                (let ((_%e203642203822%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203635203799%_))))
                                  (let ((_%hd203643203826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203642203822%_)))
                                        (_%tl203644203829%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203642203822%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd203643203826%_))
                                        (let ((_%e203645203832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd203643203826%_))))
                                          (if (equal? _%e203645203832%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203644203829%_))
                                                  (let ((_%e203646203836%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203644203829%_))))
                                                    (let ((_%hd203647203840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203646203836%_)))
                                                          (_%tl203648203843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203646203836%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd203647203840%_))
                                                          (let ((_%e203649203846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd203647203840%_))))
                    (let ((_%hd203650203850%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203649203846%_)))
                          (_%tl203651203853%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203649203846%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd203650203850%_))
                          (if (let ((__tmp207195 |gxc[1]#_g207196_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp207195
                                 _%hd203650203850%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203651203853%_))
                                  (let ((_%e203652203856%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203651203853%_))))
                                    (let ((_%hd203653203860%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203652203856%_)))
                                          (_%tl203654203863%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203652203856%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203654203863%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203648203843%_))
                                              (let ((_%e203655203866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203648203843%_))))
                                                (let ((_%hd203656203870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203655203866%_)))
                                                      (_%tl203657203873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203655203866%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd203656203870%_))
                                                      (let ((_%e203658203876%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd203656203870%_))))
                (if (equal? _%e203658203876%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl203657203873%_))
                        (let ((_%e203659203880%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl203657203873%_))))
                          (let ((_%hd203660203884%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203659203880%_)))
                                (_%tl203661203887%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203659203880%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd203660203884%_))
                                (let ((_%e203662203890%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd203660203884%_))))
                                  (let ((_%hd203663203894%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203662203890%_)))
                                        (_%tl203664203897%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203662203890%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd203663203894%_))
                                        (if (let ((__tmp207197
                                                   |gxc[1]#_g207198_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp207197
                                               _%hd203663203894%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl203664203897%_))
                                                (let ((_%e203665203900%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl203664203897%_))))
                                                  (let ((_%hd203666203904%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203665203900%_)))
                                                        (_%tl203667203907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203665203900%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl203667203907%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl203661203887%_))
                                                            ((lambda (_%L203910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L203912%_
                              _%L203913%_
                              _%L203914%_
                              _%L203915%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L203912%_))
                           (cons _%L203912%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L203914%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L203910%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd203666203904%_
                     _%hd203653203860%_
                     _%hd203640203816%_
                     _%hd203627203772%_
                     _%hd203614203728%_)
                    (_%g203593203673%_ _%g203594203677%_))
                (_%g203593203673%_ _%g203594203677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g203593203673%_
                                                 _%g203594203677%_))
                                            (_%g203593203673%_
                                             _%g203594203677%_))
                                        (_%g203593203673%_
                                         _%g203594203677%_))))
                                (_%g203593203673%_ _%g203594203677%_))))
                        (_%g203593203673%_ _%g203594203677%_))
                    (_%g203593203673%_ _%g203594203677%_)))
              (_%g203593203673%_ _%g203594203677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203593203673%_
                                               _%g203594203677%_))
                                          (_%g203593203673%_
                                           _%g203594203677%_))))
                                  (_%g203593203673%_ _%g203594203677%_))
                              (_%g203593203673%_ _%g203594203677%_))
                          (_%g203593203673%_ _%g203594203677%_))))
                  (_%g203593203673%_ _%g203594203677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g203593203673%_
                                                   _%g203594203677%_))
                                              (_%g203593203673%_
                                               _%g203594203677%_)))
                                        (_%g203593203673%_
                                         _%g203594203677%_))))
                                (_%g203593203673%_ _%g203594203677%_))
                            (_%g203593203673%_ _%g203594203677%_))))
                    (_%g203593203673%_ _%g203594203677%_))
                (_%g203593203673%_ _%g203594203677%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g203593203673%_
                                                     _%g203594203677%_))))
                                            (_%g203593203673%_
                                             _%g203594203677%_))))
                                    (_%g203593203673%_ _%g203594203677%_))
                                (_%g203593203673%_ _%g203594203677%_)))
                          (_%g203593203673%_ _%g203594203677%_))))
                  (_%g203593203673%_ _%g203594203677%_))
              (_%g203593203673%_ _%g203594203677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203593203673%_
                                               _%g203594203677%_))
                                          (_%g203593203673%_
                                           _%g203594203677%_))
                                      (_%g203593203673%_ _%g203594203677%_))))
                              (_%g203593203673%_ _%g203594203677%_))))
                      (_%g203593203673%_ _%g203594203677%_))
                  (_%g203593203673%_ _%g203594203677%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g203593203673%_
                                                     _%g203594203677%_))))
                                            (_%g203593203673%_
                                             _%g203594203677%_))
                                        (_%g203593203673%_
                                         _%g203594203677%_))))
                                (_%g203593203673%_ _%g203594203677%_))
                            (_%g203593203673%_ _%g203594203677%_))
                        (_%g203593203673%_ _%g203594203677%_))))
                (_%g203593203673%_ _%g203594203677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g203593203673%_
                                                 _%g203594203677%_))
                                            (_%g203593203673%_
                                             _%g203594203677%_)))
                                      (_%g203593203673%_ _%g203594203677%_))))
                              (_%g203593203673%_ _%g203594203677%_))))
                      (_%g203593203673%_ _%g203594203677%_)))))
          (_%g203592203975%_ _%sig203590%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx204747%_)
        (let* ((_%g204750204768%_
                (lambda (_%g204751204764%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204751204764%_))))
               (_%g204749204823%_
                (lambda (_%g204751204772%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204751204772%_))
                      (let ((_%e204754204775%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204751204772%_))))
                        (let ((_%hd204755204779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204754204775%_)))
                              (_%tl204756204782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204754204775%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204756204782%_))
                              (let ((_%e204757204785%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204756204782%_))))
                                (let ((_%hd204758204789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204757204785%_)))
                                      (_%tl204759204792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204757204785%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204759204792%_))
                                      (let ((_%e204760204795%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204759204792%_))))
                                        (let ((_%hd204761204799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204760204795%_)))
                                              (_%tl204762204802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204760204795%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204762204802%_))
                                              ((lambda (_%L204805%_
                                                        _%L204807%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L204807%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L204805%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx204747%_
                                                        _%L204807%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx204747%_
                                                        _%L204805%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L204807%_
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
                                                   (cons _%L204805%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g204750204768%_
                                                      _%g204751204772%_)))
                                               _%hd204761204799%_
                                               _%hd204758204789%_)
                                              (_%g204750204768%_
                                               _%g204751204772%_))))
                                      (_%g204750204768%_ _%g204751204772%_))))
                              (_%g204750204768%_ _%g204751204772%_))))
                      (_%g204750204768%_ _%g204751204772%_)))))
          (_%g204749204823%_ _%stx204747%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx204827%_)
        (let* ((_%g204830204854%_
                (lambda (_%g204831204850%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204831204850%_))))
               (_%g204829205137%_
                (lambda (_%g204831204858%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204831204858%_))
                      (let ((_%e204834204861%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204831204858%_))))
                        (let ((_%hd204835204865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204834204861%_)))
                              (_%tl204836204868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204834204861%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204836204868%_))
                              (let ((_%e204837204871%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204836204868%_))))
                                (let ((_%hd204838204875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204837204871%_)))
                                      (_%tl204839204878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204837204871%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204839204878%_))
                                      (let ((_g207199_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204839204878%_
                                                '0))))
                                        (begin
                                          (let ((_g207200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207199_)
                                                       (##vector-length
                                                        _g207199_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207200_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207200_)))
                                          (let ((_%target204840204881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207199_ 0)))
                                                (_%tl204842204884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207199_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204842204884%_))
                                                (letrec ((_%loop204843204887%_
                                                          (lambda (_%hd204841204891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature204847204894%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204841204891%_))
                        (let ((_%e204844204897%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204841204891%_))))
                          (let ((_%lp-hd204845204901%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204844204897%_)))
                                (_%lp-tl204846204904%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204844204897%_))))
                            (_%loop204843204887%_
                             _%lp-tl204846204904%_
                             (cons _%lp-hd204845204901%_
                                   _%signature204847204894%_))))
                        (let ((_%signature204848204907%_
                               (reverse _%signature204847204894%_)))
                          ((lambda (_%L204911%_ _%L204913%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L204913%_))
                                 (let* ((_%g204931204946%_
                                         (lambda (_%g204932204942%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g204932204942%_))))
                                        (_%g204930205125%_
                                         (lambda (_%g204932204950%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g204932204950%_))
                                               (let ((_%e204935204953%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g204932204950%_))))
                                                 (let ((_%hd204936204957%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e204935204953%_)))
                                                       (_%tl204937204960%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e204935204953%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl204937204960%_))
                                                       (let ((_%e204938204963%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl204937204960%_))))
                 (let ((_%hd204939204967%_
                        (let ()
                          (declare (not safe))
                          (##car _%e204938204963%_)))
                       (_%tl204940204970%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e204938204963%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl204940204970%_))
                       ((lambda (_%L204973%_ _%L204975%_)
                          (let* ((_%g204991204999%_
                                  (lambda (_%g204992204995%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g204992204995%_))))
                                 (_%g204990205121%_
                                  (lambda (_%g204992205003%_)
                                    ((lambda (_%L205006%_)
                                       (let* ((_%unchecked205019%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L204973%_))
                                              (_%g205022205030%_
                                               (lambda (_%g205023205026%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g205023205026%_))))
                                              (_%g205021205053%_
                                               (lambda (_%g205023205034%_)
                                                 ((lambda (_%L205037%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L205006%_
                                                                (cons _%L205037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g205023205034%_))))
                                         (_%g205021205053%_
                                          (if _%unchecked205019%_
                                              (let* ((_%g205057205072%_
                                                      (lambda (_%g205058205068%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g205058205068%_))))
                                                     (_%g205056205117%_
                                                      (lambda (_%g205058205076%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g205058205076%_))
                                                            (let ((_%e205061205079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g205058205076%_))))
                      (let ((_%hd205062205083%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205061205079%_)))
                            (_%tl205063205086%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205061205079%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205063205086%_))
                            (let ((_%e205064205089%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205063205086%_))))
                              (let ((_%hd205065205093%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205064205089%_)))
                                    (_%tl205066205096%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205064205089%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205066205096%_))
                                    ((lambda (_%L205099%_ _%L205101%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L205101%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204975%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L205099%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd205065205093%_
                                     _%hd205062205083%_)
                                    (_%g205057205072%_ _%g205058205076%_))))
                            (_%g205057205072%_ _%g205058205076%_))))
                    (_%g205057205072%_ _%g205058205076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205056205117%_
                                                 _%unchecked205019%_))
                                              '(begin)))))
                                     _%g204992205003%_))))
                            (_%g204990205121%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L204913%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204975%_ '()))
                   (cons '#f (cons 'signature: (cons _%L204973%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd204939204967%_
                        _%hd204936204957%_)
                       (_%g204931204946%_ _%g204932204950%_))))
               (_%g204931204946%_ _%g204932204950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g204931204946%_
                                                _%g204932204950%_)))))
                                   (_%g204930205125%_
                                    (|gxc[1]#parse-signature|
                                     _%stx204827%_
                                     _%L204913%_
                                     (let ((__tmp207201
                                            (lambda (_%g205128205131%_
                                                     _%g205129205134%_)
                                              (cons _%g205128205131%_
                                                    _%g205129205134%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp207201
                                        '()
                                        _%L204911%_)))))
                                 (_%g204830204854%_ _%g204831204858%_)))
                           _%signature204848204907%_
                           _%hd204838204875%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204843204887%_
                                                   _%target204840204881%_
                                                   '()))
                                                (_%g204830204854%_
                                                 _%g204831204858%_)))))
                                      (_%g204830204854%_ _%g204831204858%_))))
                              (_%g204830204854%_ _%g204831204858%_))))
                      (_%g204830204854%_ _%g204831204858%_)))))
          (_%g204829205137%_ _%stx204827%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx205142%_)
        (let* ((_%g205145205169%_
                (lambda (_%g205146205165%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205146205165%_))))
               (_%g205144206052%_
                (lambda (_%g205146205173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205146205173%_))
                      (let ((_%e205149205176%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205146205173%_))))
                        (let ((_%hd205150205180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205149205176%_)))
                              (_%tl205151205183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205149205176%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205151205183%_))
                              (let ((_%e205152205186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205151205183%_))))
                                (let ((_%hd205153205190%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205152205186%_)))
                                      (_%tl205154205193%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205152205186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205154205193%_))
                                      (let ((_g207202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205154205193%_
                                                '0))))
                                        (begin
                                          (let ((_g207203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207202_)
                                                       (##vector-length
                                                        _g207202_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207203_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207203_)))
                                          (let ((_%target205155205196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207202_ 0)))
                                                (_%tl205157205199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207202_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205157205199%_))
                                                (letrec ((_%loop205158205202%_
                                                          (lambda (_%hd205156205206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature205162205209%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd205156205206%_))
                        (let ((_%e205159205212%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd205156205206%_))))
                          (let ((_%lp-hd205160205216%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205159205212%_)))
                                (_%lp-tl205161205219%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205159205212%_))))
                            (_%loop205158205202%_
                             _%lp-tl205161205219%_
                             (cons _%lp-hd205160205216%_
                                   _%case-signature205162205209%_))))
                        (let ((_%case-signature205163205222%_
                               (reverse _%case-signature205162205209%_)))
                          ((lambda (_%L205226%_ _%L205228%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205228%_))
                                 (let* ((_%signatures205259%_
                                         (map (lambda (_%g205245205247%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx205142%_
                                                 _%L205228%_
                                                 _%g205245205247%_))
                                              (let ((__tmp207204
                                                     (lambda (_%g205250205253%_
                                                              _%g205251205256%_)
                                                       (cons _%g205250205253%_
                                                             _%g205251205256%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp207204
                                                 '()
                                                 _%L205226%_))))
                                        (_%g205262205288%_
                                         (lambda (_%g205263205284%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205263205284%_))))
                                        (_%g205261206048%_
                                         (lambda (_%g205263205292%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g205263205292%_))
                                               (let ((_g207205_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g205263205292%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g207206_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g207205_)
                        (##vector-length _g207205_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g207206_ 2)))
                 (error "Context expects 2 values" _g207206_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target205266205295%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207205_
                                                             0)))
                                                         (_%tl205268205298%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207205_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205268205298%_))
                                                         (letrec ((_%loop205269205301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd205267205305%_
                                    _%sig205273205308%_
                                    _%arity205274205310%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd205267205305%_))
                                 (let ((_%e205270205313%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd205267205305%_))))
                                   (let ((_%lp-hd205271205317%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205270205313%_)))
                                         (_%lp-tl205272205320%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205270205313%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd205271205317%_))
                                         (let ((_%e205277205323%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd205271205317%_))))
                                           (let ((_%hd205278205327%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e205277205323%_)))
                                                 (_%tl205279205330%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e205277205323%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205279205330%_))
                                                 (let ((_%e205280205333%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205279205330%_))))
                                                   (let ((_%hd205281205337%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205280205333%_)))
                                                         (_%tl205282205340%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205280205333%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205282205340%_))
                                                         (_%loop205269205301%_
                                                          _%lp-tl205272205320%_
                                                          (cons _%hd205281205337%_
                                                                _%sig205273205308%_)
                                                          (cons _%hd205278205327%_
                                                                _%arity205274205310%_))
                                                         (_%g205262205288%_
                                                          _%g205263205292%_))))
                                                 (_%g205262205288%_
                                                  _%g205263205292%_))))
                                         (_%g205262205288%_
                                          _%g205263205292%_))))
                                 (let ((_%sig205275205343%_
                                        (reverse _%sig205273205308%_))
                                       (_%arity205276205346%_
                                        (reverse _%arity205274205310%_)))
                                   ((lambda (_%L205349%_ _%L205351%_)
                                      (let* ((_%g205368205376%_
                                              (lambda (_%g205369205372%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g205369205372%_))))
                                             (_%g205367206033%_
                                              (lambda (_%g205369205380%_)
                                                ((lambda (_%L205383%_)
                                                   (let* ((_%g205396205404%_
                                                           (lambda (_%g205397205400%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g205397205400%_))))
                  (_%g205395205426%_
                   (lambda (_%g205397205408%_)
                     ((lambda (_%L205411%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L205383%_ (cons _%L205411%_ '()))))
                      _%g205397205408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205395205426%_
                                                      (let ((_g207207_
                                                             (let _%loop205430%_ ((_%rest205433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures205259%_)
                                          (_%unchecked-proc205435%_ '#f)
                                          (_%unchecked-clauses205436%_ '()))
                       (let* ((_%rest205437205445%_ _%rest205433%_)
                              (_%else205439205457%_
                               (lambda ()
                                 (values _%unchecked-proc205435%_
                                         (reverse!
                                          _%unchecked-clauses205436%_))))
                              (_%K205441205898%_
                               (lambda (_%rest205461%_ _%hd205463%_)
                                 (let* ((_%g205465205552%_
                                         (lambda (_%g205466205548%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205466205548%_))))
                                        (_%g205464205894%_
                                         (lambda (_%g205466205556%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205466205556%_))
                                               (let ((_%e205473205559%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205466205556%_))))
                                                 (let ((_%hd205474205563%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205473205559%_)))
                                                       (_%tl205475205566%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205473205559%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl205475205566%_))
                                                       (let ((_%e205476205569%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl205475205566%_))))
                 (let ((_%hd205477205573%_
                        (let ()
                          (declare (not safe))
                          (##car _%e205476205569%_)))
                       (_%tl205478205576%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e205476205569%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd205477205573%_))
                       (let ((_%e205479205579%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd205477205573%_))))
                         (let ((_%hd205480205583%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205479205579%_)))
                               (_%tl205481205586%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205479205579%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl205481205586%_))
                               (let ((_%e205482205589%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl205481205586%_))))
                                 (let ((_%hd205483205593%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e205482205589%_)))
                                       (_%tl205484205596%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e205482205589%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd205483205593%_))
                                       (let ((_%e205485205599%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd205483205593%_))))
                                         (if (equal? _%e205485205599%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205484205596%_))
                                                 (let ((_%e205486205603%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205484205596%_))))
                                                   (let ((_%hd205487205607%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205486205603%_)))
                                                         (_%tl205488205610%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205486205603%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd205487205607%_))
                                                         (let ((_%e205489205613%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd205487205607%_))))
                   (let ((_%hd205490205617%_
                          (let ()
                            (declare (not safe))
                            (##car _%e205489205613%_)))
                         (_%tl205491205620%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e205489205613%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd205490205617%_))
                         (if (let ((__tmp207209 |gxc[1]#_g207210_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp207209
                                _%hd205490205617%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl205491205620%_))
                                 (let ((_%e205492205623%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl205491205620%_))))
                                   (let ((_%hd205493205627%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205492205623%_)))
                                         (_%tl205494205630%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205492205623%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl205494205630%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl205488205610%_))
                                             (let ((_%e205495205633%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl205488205610%_))))
                                               (let ((_%hd205496205637%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e205495205633%_)))
                                                     (_%tl205497205640%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e205495205633%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd205496205637%_))
                                                     (let ((_%e205498205643%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd205496205637%_))))
                                                       (if (equal? _%e205498205643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl205497205640%_))
                       (let ((_%e205499205647%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl205497205640%_))))
                         (let ((_%hd205500205651%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205499205647%_)))
                               (_%tl205501205654%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205499205647%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd205500205651%_))
                               (let ((_%e205502205657%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd205500205651%_))))
                                 (let ((_%hd205503205661%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e205502205657%_)))
                                       (_%tl205504205664%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e205502205657%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd205503205661%_))
                                       (if (let ((__tmp207211
                                                  |gxc[1]#_g207212_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp207211
                                              _%hd205503205661%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl205504205664%_))
                                               (let ((_%e205505205667%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl205504205664%_))))
                                                 (let ((_%hd205506205671%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205505205667%_)))
                                                       (_%tl205507205674%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205505205667%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl205507205674%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl205501205654%_))
                                                           (let ((_%e205508205677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl205501205654%_))))
                     (let ((_%hd205509205681%_
                            (let ()
                              (declare (not safe))
                              (##car _%e205508205677%_)))
                           (_%tl205510205684%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e205508205677%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd205509205681%_))
                           (let ((_%e205511205687%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd205509205681%_))))
                             (if (equal? _%e205511205687%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl205510205684%_))
                                     (let ((_%e205512205691%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl205510205684%_))))
                                       (let ((_%hd205513205695%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205512205691%_)))
                                             (_%tl205514205698%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205512205691%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd205513205695%_))
                                             (let ((_%e205515205701%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd205513205695%_))))
                                               (let ((_%hd205516205705%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e205515205701%_)))
                                                     (_%tl205517205708%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e205515205701%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd205516205705%_))
                                                     (if (let ((__tmp207213
                                                                |gxc[1]#_g207214_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp207213
                                                            _%hd205516205705%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl205517205708%_))
                     (let ((_%e205518205711%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl205517205708%_))))
                       (let ((_%hd205519205715%_
                              (let ()
                                (declare (not safe))
                                (##car _%e205518205711%_)))
                             (_%tl205520205718%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e205518205711%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl205520205718%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl205514205698%_))
                                 (let ((_%e205521205721%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl205514205698%_))))
                                   (let ((_%hd205522205725%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205521205721%_)))
                                         (_%tl205523205728%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205521205721%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd205522205725%_))
                                         (let ((_%e205524205731%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd205522205725%_))))
                                           (if (equal? _%e205524205731%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl205523205728%_))
                                                   (let ((_%e205525205735%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl205523205728%_))))
                                                     (let ((_%hd205526205739%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e205525205735%_)))
                                                           (_%tl205527205742%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e205525205735%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd205526205739%_))
                                                           (let ((_%e205528205745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd205526205739%_))))
                     (let ((_%hd205529205749%_
                            (let ()
                              (declare (not safe))
                              (##car _%e205528205745%_)))
                           (_%tl205530205752%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e205528205745%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd205529205749%_))
                           (if (let ((__tmp207215 |gxc[1]#_g207216_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp207215
                                  _%hd205529205749%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl205530205752%_))
                                   (let ((_%e205531205755%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl205530205752%_))))
                                     (let ((_%hd205532205759%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e205531205755%_)))
                                           (_%tl205533205762%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e205531205755%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl205533205762%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl205527205742%_))
                                               (let ((_%e205534205765%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl205527205742%_))))
                                                 (let ((_%hd205535205769%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205534205765%_)))
                                                       (_%tl205536205772%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205534205765%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd205535205769%_))
                                                       (let ((_%e205537205775%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd205535205769%_))))
                 (if (equal? _%e205537205775%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl205536205772%_))
                         (let ((_%e205538205779%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl205536205772%_))))
                           (let ((_%hd205539205783%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e205538205779%_)))
                                 (_%tl205540205786%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e205538205779%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd205539205783%_))
                                 (let ((_%e205541205789%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd205539205783%_))))
                                   (let ((_%hd205542205793%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205541205789%_)))
                                         (_%tl205543205796%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205541205789%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd205542205793%_))
                                         (if (let ((__tmp207217
                                                    |gxc[1]#_g207218_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp207217
                                                _%hd205542205793%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205543205796%_))
                                                 (let ((_%e205544205799%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205543205796%_))))
                                                   (let ((_%hd205545205803%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205544205799%_)))
                                                         (_%tl205546205806%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205544205799%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205546205806%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl205540205786%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl205478205576%_))
                         ((lambda (_%L205809%_
                                   _%L205811%_
                                   _%L205812%_
                                   _%L205813%_
                                   _%L205814%_
                                   _%L205815%_)
                            (let ((_%clause205886%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L205815%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
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
                                                 (cons _%L205813%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L205809%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked205888%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L205811%_))))
                              (_%loop205430%_
                               _%rest205461%_
                               (let ((_%$e205890%_ _%unchecked205888%_))
                                 (if _%$e205890%_
                                     _%$e205890%_
                                     _%unchecked-proc205435%_))
                               (cons _%clause205886%_
                                     _%unchecked-clauses205436%_))))
                          _%hd205545205803%_
                          _%hd205532205759%_
                          _%hd205519205715%_
                          _%hd205506205671%_
                          _%hd205493205627%_
                          _%hd205474205563%_)
                         (_%g205465205552%_ _%g205466205556%_))
                     (_%g205465205552%_ _%g205466205556%_))
                 (_%g205465205552%_ _%g205466205556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205465205552%_
                                                  _%g205466205556%_))
                                             (_%g205465205552%_
                                              _%g205466205556%_))
                                         (_%g205465205552%_
                                          _%g205466205556%_))))
                                 (_%g205465205552%_ _%g205466205556%_))))
                         (_%g205465205552%_ _%g205466205556%_))
                     (_%g205465205552%_ _%g205466205556%_)))
               (_%g205465205552%_ _%g205466205556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205465205552%_
                                                _%g205466205556%_))
                                           (_%g205465205552%_
                                            _%g205466205556%_))))
                                   (_%g205465205552%_ _%g205466205556%_))
                               (_%g205465205552%_ _%g205466205556%_))
                           (_%g205465205552%_ _%g205466205556%_))))
                   (_%g205465205552%_ _%g205466205556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g205465205552%_
                                                    _%g205466205556%_))
                                               (_%g205465205552%_
                                                _%g205466205556%_)))
                                         (_%g205465205552%_
                                          _%g205466205556%_))))
                                 (_%g205465205552%_ _%g205466205556%_))
                             (_%g205465205552%_ _%g205466205556%_))))
                     (_%g205465205552%_ _%g205466205556%_))
                 (_%g205465205552%_ _%g205466205556%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205465205552%_
                                                      _%g205466205556%_))))
                                             (_%g205465205552%_
                                              _%g205466205556%_))))
                                     (_%g205465205552%_ _%g205466205556%_))
                                 (_%g205465205552%_ _%g205466205556%_)))
                           (_%g205465205552%_ _%g205466205556%_))))
                   (_%g205465205552%_ _%g205466205556%_))
               (_%g205465205552%_ _%g205466205556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205465205552%_
                                                _%g205466205556%_))
                                           (_%g205465205552%_
                                            _%g205466205556%_))
                                       (_%g205465205552%_ _%g205466205556%_))))
                               (_%g205465205552%_ _%g205466205556%_))))
                       (_%g205465205552%_ _%g205466205556%_))
                   (_%g205465205552%_ _%g205466205556%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205465205552%_
                                                      _%g205466205556%_))))
                                             (_%g205465205552%_
                                              _%g205466205556%_))
                                         (_%g205465205552%_
                                          _%g205466205556%_))))
                                 (_%g205465205552%_ _%g205466205556%_))
                             (_%g205465205552%_ _%g205466205556%_))
                         (_%g205465205552%_ _%g205466205556%_))))
                 (_%g205465205552%_ _%g205466205556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205465205552%_
                                                  _%g205466205556%_))
                                             (_%g205465205552%_
                                              _%g205466205556%_)))
                                       (_%g205465205552%_ _%g205466205556%_))))
                               (_%g205465205552%_ _%g205466205556%_))))
                       (_%g205465205552%_ _%g205466205556%_))))
               (_%g205465205552%_ _%g205466205556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205465205552%_
                                                _%g205466205556%_)))))
                                   (_%g205464205894%_ _%hd205463%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest205437205445%_))
                             (let ((_%hd205442205902%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest205437205445%_)))
                                   (_%tl205443205905%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest205437205445%_))))
                               (let* ((_%hd205908%_ _%hd205442205902%_)
                                      (_%rest205911%_ _%tl205443205905%_))
                                 (_%K205441205898%_
                                  _%rest205911%_
                                  _%hd205908%_)))
                             (_%else205439205457%_))))))
                (begin
                  (let ((_g207208_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207207_)
                               (##vector-length _g207207_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207208_ 2)))
                        (error "Context expects 2 values" _g207208_)))
                  (let ((_%unchecked-proc205914%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207207_ 0)))
                        (_%unchecked-clauses205916%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207207_ 1))))
                    (if _%unchecked-proc205914%_
                        (let* ((_%g205918205942%_
                                (lambda (_%g205919205938%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g205919205938%_))))
                               (_%g205917206029%_
                                (lambda (_%g205919205946%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g205919205946%_))
                                      (let ((_%e205922205949%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g205919205946%_))))
                                        (let ((_%hd205923205953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205922205949%_)))
                                              (_%tl205924205956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205922205949%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205924205956%_))
                                              (let ((_%e205925205959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205924205956%_))))
                                                (let ((_%hd205926205963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205925205959%_)))
                                                      (_%tl205927205966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205925205959%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd205926205963%_))
                                                      (let ((_g207219_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd205926205963%_ '0))))
                (begin
                  (let ((_g207220_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207219_)
                               (##vector-length _g207219_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207220_ 2)))
                        (error "Context expects 2 values" _g207220_)))
                  (let ((_%target205928205969%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207219_ 0)))
                        (_%tl205930205972%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207219_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl205930205972%_))
                        (letrec ((_%loop205931205975%_
                                  (lambda (_%hd205929205979%_
                                           _%clause205935205982%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd205929205979%_))
                                        (let ((_%e205932205985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd205929205979%_))))
                                          (let ((_%lp-hd205933205989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e205932205985%_)))
                                                (_%lp-tl205934205992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e205932205985%_))))
                                            (_%loop205931205975%_
                                             _%lp-tl205934205992%_
                                             (cons _%lp-hd205933205989%_
                                                   _%clause205935205982%_))))
                                        (let ((_%clause205936205995%_
                                               (reverse _%clause205935205982%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205927205966%_))
                                              ((lambda (_%L205999%_
                                                        _%L206001%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L206001%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp207221
                                                    (lambda (_%g206020206023%_
                                                             _%g206021206026%_)
                                                      (cons _%g206020206023%_
                                                            _%g206021206026%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp207221
                                                '()
                                                _%L205999%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause205936205995%_
                                               _%hd205923205953%_)
                                              (_%g205918205942%_
                                               _%g205919205946%_)))))))
                          (_%loop205931205975%_ _%target205928205969%_ '()))
                        (_%g205918205942%_ _%g205919205946%_)))))
              (_%g205918205942%_ _%g205919205946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205918205942%_
                                               _%g205919205946%_))))
                                      (_%g205918205942%_ _%g205919205946%_)))))
                          (_%g205917206029%_
                           (list _%unchecked-proc205914%_
                                 _%unchecked-clauses205916%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g205369205380%_))))
                                        (_%g205367206033%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L205228%_
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
                                          _%L205349%_
                                          _%L205351%_))
                                       (let ((__tmp207222
                                              (lambda (_%g206036206040%_
                                                       _%g206037206043%_
                                                       _%g206038206045%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g206037206043%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g206036206040%_ '())))))
              _%g206038206045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp207222
                                          '()
                                          _%L205349%_
                                          _%L205351%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig205275205343%_
                                    _%arity205276205346%_))))))
                   (_%loop205269205301%_ _%target205266205295%_ '() '()))
                 (_%g205262205288%_ _%g205263205292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205262205288%_
                                                _%g205263205292%_)))))
                                   (_%g205261206048%_ _%signatures205259%_))
                                 (_%g205145205169%_ _%g205146205173%_)))
                           _%case-signature205163205222%_
                           _%hd205153205190%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop205158205202%_
                                                   _%target205155205196%_
                                                   '()))
                                                (_%g205145205169%_
                                                 _%g205146205173%_)))))
                                      (_%g205145205169%_ _%g205146205173%_))))
                              (_%g205145205169%_ _%g205146205173%_))))
                      (_%g205145205169%_ _%g205146205173%_)))))
          (_%g205144206052%_ _%stx205142%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx206060%_)
        (let* ((_%__stx207042207043%_ _%$stx206060%_)
               (_%g206066206126%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207042207043%_)))))
          (let ((_%__kont207045207046%_
                 (lambda (_%L206348%_ _%L206350%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206350%_ '()))
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
                                                       (cons _%L206350%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206348%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207047207048%_
                 (lambda (_%L206273%_ _%L206275%_ _%L206276%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206276%_ '()))
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
                                                       (cons _%L206276%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206275%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206273%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207049207050%_
                 (lambda (_%L206187%_ _%L206189%_ _%L206190%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206190%_ '()))
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
                                                       (cons _%L206190%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206189%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206187%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207042207043%_))
                (let ((_%e206070206304%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207042207043%_))))
                  (let ((_%tl206072206311%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206070206304%_)))
                        (_%hd206071206308%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206070206304%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206072206311%_))
                        (let ((_%e206073206314%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206072206311%_))))
                          (let ((_%tl206075206321%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206073206314%_)))
                                (_%hd206074206318%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206073206314%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd206074206318%_))
                                (let ((_%e206076206324%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd206074206318%_))))
                                  (if (equal? _%e206076206324%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl206075206321%_))
                                          (let ((_%e206077206328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl206075206321%_))))
                                            (let ((_%tl206079206335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206077206328%_)))
                                                  (_%hd206078206332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206077206328%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206079206335%_))
                                                  (let ((_%e206080206338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206079206335%_))))
                                                    (let ((_%tl206082206345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206080206338%_)))
                                                          (_%hd206081206342%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206080206338%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206082206345%_))
                                                          (_%__kont207045207046%_
                                                           _%hd206081206342%_
                                                           _%hd206078206332%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g206066206126%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206066206126%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g206066206126%_)))
                                      (if (equal? _%e206076206324%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206075206321%_))
                                              (let ((_%e206093206243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206075206321%_))))
                                                (let ((_%tl206095206250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206093206243%_)))
                                                      (_%hd206094206247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206093206243%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl206095206250%_))
                                                      (let ((_%e206096206253%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl206095206250%_))))
                (let ((_%tl206098206260%_
                       (let () (declare (not safe)) (##cdr _%e206096206253%_)))
                      (_%hd206097206257%_
                       (let ()
                         (declare (not safe))
                         (##car _%e206096206253%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206098206260%_))
                      (let ((_%e206099206263%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206098206260%_))))
                        (let ((_%tl206101206270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206099206263%_)))
                              (_%hd206100206267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206099206263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206101206270%_))
                              (_%__kont207047207048%_
                               _%hd206100206267%_
                               _%hd206097206257%_
                               _%hd206094206247%_)
                              (let ()
                                (declare (not safe))
                                (_%g206066206126%_)))))
                      (let () (declare (not safe)) (_%g206066206126%_)))))
              (let () (declare (not safe)) (_%g206066206126%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g206066206126%_)))
                                          (if (equal? _%e206076206324%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206075206321%_))
                                                  (let ((_%e206112206157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206075206321%_))))
                                                    (let ((_%tl206114206164%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206112206157%_)))
                                                          (_%hd206113206161%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206112206157%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206114206164%_))
                                                          (let ((_%e206115206167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206114206164%_))))
                    (let ((_%tl206117206174%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206115206167%_)))
                          (_%hd206116206171%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206115206167%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206117206174%_))
                          (let ((_%e206118206177%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206117206174%_))))
                            (let ((_%tl206120206184%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206118206177%_)))
                                  (_%hd206119206181%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206118206177%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206120206184%_))
                                  (_%__kont207049207050%_
                                   _%hd206119206181%_
                                   _%hd206116206171%_
                                   _%hd206113206161%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206066206126%_)))))
                          (let () (declare (not safe)) (_%g206066206126%_)))))
                  (let () (declare (not safe)) (_%g206066206126%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206066206126%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206066206126%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g206066206126%_)))))
                        (let () (declare (not safe)) (_%g206066206126%_)))))
                (let () (declare (not safe)) (_%g206066206126%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx206372%_)
        (let* ((_%g206376206396%_
                (lambda (_%g206377206392%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206377206392%_))))
               (_%g206375206467%_
                (lambda (_%g206377206400%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206377206400%_))
                      (let ((_%e206379206403%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206377206400%_))))
                        (let ((_%hd206380206407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206379206403%_)))
                              (_%tl206381206410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206379206403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206381206410%_))
                              (let ((_g207223_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206381206410%_
                                        '0))))
                                (begin
                                  (let ((_g207224_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207223_)
                                               (##vector-length _g207223_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207224_ 2)))
                                        (error "Context expects 2 values"
                                               _g207224_)))
                                  (let ((_%target206382206413%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207223_ 0)))
                                        (_%tl206384206416%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207223_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206384206416%_))
                                        (letrec ((_%loop206385206419%_
                                                  (lambda (_%hd206383206423%_
                                                           _%decl206389206426%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206383206423%_))
                                                        (let ((_%e206386206429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206383206423%_))))
                  (let ((_%lp-hd206387206433%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206386206429%_)))
                        (_%lp-tl206388206436%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206386206429%_))))
                    (_%loop206385206419%_
                     _%lp-tl206388206436%_
                     (cons _%lp-hd206387206433%_ _%decl206389206426%_))))
                (let ((_%decl206390206439%_ (reverse _%decl206389206426%_)))
                  ((lambda (_%L206443%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp207225
                                  (lambda (_%g206458206461%_ _%g206459206464%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g206458206461%_)
                                          _%g206459206464%_))))
                             (declare (not safe))
                             (__foldr1 __tmp207225 '() _%L206443%_))))
                   _%decl206390206439%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop206385206419%_
                                           _%target206382206413%_
                                           '()))
                                        (_%g206376206396%_
                                         _%g206377206400%_)))))
                              (_%g206376206396%_ _%g206377206400%_))))
                      (_%g206376206396%_ _%g206377206400%_)))))
          (_%g206375206467%_ _%$stx206372%_))))))
